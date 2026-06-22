package com.deathswap.mixin;

import net.minecraft.core.NonNullList;
import net.minecraft.server.level.ServerPlayer;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.inventory.AbstractContainerMenu;
import net.minecraft.world.inventory.ContainerInput;
import net.minecraft.world.inventory.Slot;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.Shadow;
import org.spongepowered.asm.mixin.injection.At;
import org.spongepowered.asm.mixin.injection.Inject;
import org.spongepowered.asm.mixin.injection.callback.CallbackInfo;

@Mixin(AbstractContainerMenu.class)
public abstract class AbstractContainerMenuMixin {

    @Shadow
    public NonNullList<Slot> slots;

    @Inject(
            method = "clicked(IILnet/minecraft/world/inventory/ContainerInput;Lnet/minecraft/world/entity/player/Player;)V",
            at = @At("HEAD"),
            cancellable = true
    )
    private void deathswap$onClicked(int slotId, int button, ContainerInput containerInput, Player player, CallbackInfo ci) {
        if (!(player instanceof ServerPlayer serverPlayer)) {
            return;
        }

        boolean blockClick = false;

        // 1. Check if the clicked slot itself is a powerup slot (hotbar slot 6, 7, or 8).
        // Allow THROW (drop) so players can remove the powerup item, but block any other
        // action that could place/replace an item in the slot.
        if (containerInput != ContainerInput.THROW && slotId >= 0 && slotId < slots.size()) {
            Slot slot = slots.get(slotId);
            if (slot.container == serverPlayer.getInventory()) {
                int containerSlot = slot.getContainerSlot();
                if (containerSlot == 6 || containerSlot == 7 || containerSlot == 8) {
                    blockClick = true;
                }
            }
        }

        // 2. Check if the click action is a swap targeting a powerup slot (hotbar slot 6, 7, or 8)
        if (containerInput == ContainerInput.SWAP) {
            // In SWAP click type, the 'button' parameter represents the hotbar slot index (0-8)
            if (button == 6 || button == 7 || button == 8) {
                blockClick = true;
            }
        }

        if (blockClick) {
            // Cancel the menu click so no items can be moved/lost
            ci.cancel();
            // Resync inventory state to client to prevent visual desync
            serverPlayer.containerMenu.sendAllDataToRemote();
        }
    }
}
