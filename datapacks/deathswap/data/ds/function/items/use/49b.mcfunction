$give @p[scores={permPNo=$(s)}] clay_ball 64
$give @p[scores={permPNo=$(s)}] pale_oak_fence_gate 64
$give @p[scores={permPNo=$(s)}] red_sandstone_stairs 1
$give @p[scores={permPNo=$(s)}] yellow_bed 1
$give @p[scores={permPNo=$(s)}] infested_cobblestone[custom_name={"bold":false,"color":"white","italic":false,"text":"Cobblestone"}] 64
$give @p[scores={permPNo=$(s)}] big_dripleaf 64
$give @p[scores={permPNo=$(s)}] purpur_pillar 64
$give @p[scores={permPNo=$(s)}] music_disc_ward 1
$give @p[scores={permPNo=$(s)}] fire_coral_fan 64
$give @p[scores={permPNo=$(s)}] wooden_hoe 1
$give @p[scores={permPNo=$(s)}] blue_carpet 64
$give @p[scores={permPNo=$(s)}] short_grass 64
$give @p[scores={permPNo=$(s)}] tinted_glass 64
$give @p[scores={permPNo=$(s)}] magenta_stained_glass_pane 64
$give @p[scores={permPNo=$(s)}] podzol 64
$give @p[scores={permPNo=$(s)}] poisonous_potato 64
$give @p[scores={permPNo=$(s)}] ghast_tear 64
$give @p[scores={permPNo=$(s)}] resin_brick 64
$give @p[scores={permPNo=$(s)}] flower_pot 64
$give @p[scores={permPNo=$(s)}] item_frame 64
$give @p[scores={permPNo=$(s)}] red_banner 64
$give @p[scores={permPNo=$(s)}] terracotta 64
$give @p[scores={permPNo=$(s)}] green_stained_glass_pane 64
$give @p[scores={permPNo=$(s)}] suspicious_sand 64
$give @p[scores={permPNo=$(s)}] honeycomb 64
$give @p[scores={permPNo=$(s)}] pumpkin_seeds 64
$give @p[scores={permPNo=$(s)}] cactus 64
$give @p[scores={permPNo=$(s)}] short_grass 64
$give @p[scores={permPNo=$(s)}] spruce_leaves 64
$give @p[scores={permPNo=$(s)}] activator_rail 64
$give @p[scores={permPNo=$(s)}] name_tag 64
$give @p[scores={permPNo=$(s)}] dead_bush 64
$give @p[scores={permPNo=$(s)}] iron_door 64
$give @p[scores={permPNo=$(s)}] dirt_path 64
$give @p[scores={permPNo=$(s)}] horn_coral 64
$give @p[scores={permPNo=$(s)}] wet_sponge 64
$give @p[scores={permPNo=$(s)}] wooden_hoe 1
$give @p[scores={permPNo=$(s)}] gray_concrete 64
$give @p[scores={permPNo=$(s)}] heavy_core 64
$give @p[scores={permPNo=$(s)}] crafting_table 64
$give @p[scores={permPNo=$(s)}] writable_book 64
$give @p[scores={permPNo=$(s)}] beetroot_seeds 64
$give @p[scores={permPNo=$(s)}] crimson_nylium 64
$give @p[scores={permPNo=$(s)}] diorite_stairs 64
$give @p[scores={permPNo=$(s)}] exposed_copper 64
$give @p[scores={permPNo=$(s)}] bamboo_shelf 64
$give @p[scores={permPNo=$(s)}] bell 64
$give @p[scores={permPNo=$(s)}] cake 1

$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Filled ","color":"yellow"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":"'s inventory with useless junk","color":"yellow"}]
$execute as @p[scores={permPNo=$(s)}] at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 9
$execute as @p[scores={permPNo=$(s)}] at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 9
$execute as @p[scores={permPNo=$(s)}] at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 9 1.2
$execute as @p[scores={permPNo=$(s)}] at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 9 0.75

execute as @s run function ds:items/after_use