tellraw @a {"text":">> Low gravity has ended! <<","color":"light_purple"}
title @a title " "
title @a subtitle {"text":"Gravity is back to normal!","color":"light_purple"}
execute as @a at @s run playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 9 0
execute as @a run attribute @s minecraft:gravity base reset
execute as @a[tag=!no_fall_dam] run attribute @s minecraft:fall_damage_multiplier base reset
scoreboard players set lowGrav Items 0