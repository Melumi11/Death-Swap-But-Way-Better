execute if score @s nether_world matches 6100.. run fillbiome ~4 ~5 ~4 ~-4 ~-2 ~-4 minecraft:nether_wastes
execute if score @s nether_world matches 2100..6099 run fillbiome ~4 ~5 ~4 ~-4 ~-2 ~-4 minecraft:crimson_forest
execute if score @s nether_world matches ..2099 run fillbiome ~4 ~5 ~4 ~-4 ~-2 ~-4 minecraft:warped_forest

execute if score @s nether_world matches 2100.. run fill ~4 ~5 ~4 ~-4 ~-2 ~-4 minecraft:nether_wart_block replace #minecraft:leaves
execute if score @s nether_world matches 2100.. run fill ~4 ~5 ~4 ~-4 ~-2 ~-4 minecraft:crimson_stem replace #minecraft:overworld_natural_logs
execute if score @s nether_world matches ..2099 run fill ~4 ~5 ~4 ~-4 ~-2 ~-4 minecraft:warped_wart_block replace #minecraft:leaves
execute if score @s nether_world matches ..2099 run fill ~4 ~5 ~4 ~-4 ~-2 ~-4 minecraft:warped_stem replace #minecraft:overworld_natural_logs

execute if score @s nether_world matches 2100.. run fill ~4 ~5 ~4 ~-4 ~-2 ~-4 minecraft:crimson_nylium replace minecraft:grass_block
execute if score @s nether_world matches ..2099 run fill ~4 ~5 ~4 ~-4 ~-2 ~-4 minecraft:warped_nylium replace minecraft:grass_block
fill ~4 ~5 ~4 ~-4 ~-2 ~-4 minecraft:warped_nylium replace #minecraft:sand

fill ~4 ~5 ~4 ~-4 ~-2 ~-4 minecraft:nether_quartz_ore replace #minecraft:coal_ores
fill ~4 ~5 ~4 ~-4 ~-2 ~-4 minecraft:nether_quartz_ore replace #minecraft:copper_ores
fill ~4 ~5 ~4 ~-4 ~-2 ~-4 minecraft:nether_gold_ore replace #minecraft:diamond_ores
fill ~4 ~5 ~4 ~-4 ~-2 ~-4 minecraft:nether_gold_ore replace #minecraft:gold_ores
fill ~4 ~5 ~4 ~-4 ~-2 ~-4 minecraft:nether_quartz_ore replace #minecraft:emerald_ores
fill ~4 ~5 ~4 ~-4 ~-2 ~-4 minecraft:nether_quartz_ore replace #minecraft:iron_ores
fill ~4 ~5 ~4 ~-4 ~-2 ~-4 minecraft:nether_quartz_ore replace #minecraft:lapis_ores
fill ~4 ~5 ~4 ~-4 ~-2 ~-4 minecraft:nether_quartz_ore replace #minecraft:redstone_ores

fill ~4 ~5 ~4 ~-4 ~-2 ~-4 minecraft:lava replace minecraft:water

fill ~4 ~5 ~4 ~-4 ~-2 ~-4 minecraft:netherrack replace minecraft:end_stone
fill ~4 ~5 ~4 ~-4 ~-2 ~-4 minecraft:netherrack replace #minecraft:overworld_carver_replaceables