execute as @s run function ds:items/use/all
give @s minecraft:totem_of_undying

tellraw @s [{"text":">> Use your totem of undying wisely! (It must be in your hand or offhand to activate!) <<","color":"yellow"}]
execute as @s at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 9

execute as @s run function ds:items/after_use