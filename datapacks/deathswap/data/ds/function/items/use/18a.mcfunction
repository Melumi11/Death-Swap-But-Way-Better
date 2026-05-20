execute as @s run function ds:items/use/all
tag @s add in_creativeMode
scoreboard players set @s creativeMode 1050
gamemode creative @s
title @s title " "
execute if score Lang Core matches 1 run title @s subtitle {"text":">> One rule: NO enchanted golden apples! <<","color":"gold"}
execute if score Lang Core matches 2 run title @s subtitle {"text":">> 一条规则：禁止使用附魔金苹果! <<","color":"gold"}

tellraw @s {"text":">>> You are in CREATIVE MODE for 10 seconds! <<<","color":"aqua"}
tellraw @s {"text":"> NO command blocks OR ench. golden apples allowed! <","color":"yellow"}
execute as @s at @s run playsound minecraft:block.stone.break master @s ~ ~ ~ 99
execute as @s at @s run playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 9

execute as @s run function ds:items/after_use