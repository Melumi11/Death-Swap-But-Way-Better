#Copy the items from the inventory into the chest
execute in minecraft:overworld run setblock 0 55 0 chest
execute in minecraft:overworld run item replace block 0 55 0 container.6 from entity @s hotbar.6
execute in minecraft:overworld run item replace block 0 55 0 container.7 from entity @s hotbar.7
execute in minecraft:overworld run item replace block 0 55 0 container.8 from entity @s hotbar.8

#Summon items corresponding to illegal (lacking custom data) items in the chest
execute in minecraft:overworld unless items block 0 55 0 container.6 *[custom_data={deathswapitem:true}] as @s at @s run summon item ~ ~ ~ {Item:{id:"minecraft:dirt",count:1},Tags:["DeathSwapItem","DeathSwapItem1"],PickupDelay:0}
execute in minecraft:overworld unless items block 0 55 0 container.7 *[custom_data={deathswapitem:true}] as @s at @s run summon item ~ ~ ~ {Item:{id:"minecraft:dirt",count:1},Tags:["DeathSwapItem","DeathSwapItem2"],PickupDelay:0}
execute in minecraft:overworld unless items block 0 55 0 container.8 *[custom_data={deathswapitem:true}] as @s at @s run summon item ~ ~ ~ {Item:{id:"minecraft:dirt",count:1},Tags:["DeathSwapItem","DeathSwapItem3"],PickupDelay:0}

#Fill summoned items with whats in the chest
execute in minecraft:overworld run item replace entity @n[tag=DeathSwapItem1] container.0 from block 0 55 0 container.6
execute in minecraft:overworld run item replace entity @n[tag=DeathSwapItem2] container.0 from block 0 55 0 container.7
execute in minecraft:overworld run item replace entity @n[tag=DeathSwapItem3] container.0 from block 0 55 0 container.8

clear @s *[custom_data={deathswapitem:true}]

#Now put the blocker items back in the players inventory
execute in minecraft:overworld run item replace entity @s hotbar.6 with command_block[item_name={"text":"Item Slot #1","color":"gray"},max_stack_size=1,custom_data={deathswapitem:true},item_model=gray_stained_glass_pane]
execute in minecraft:overworld run item replace entity @s hotbar.7 with command_block[item_name={"text":"Item Slot #2","color":"gray"},max_stack_size=1,custom_data={deathswapitem:true},item_model=gray_stained_glass_pane]
execute in minecraft:overworld run item replace entity @s hotbar.8 with command_block[item_name={"text":"Item Slot #3","color":"gray"},max_stack_size=1,custom_data={deathswapitem:true},item_model=gray_stained_glass_pane]

# say "Items Reset"