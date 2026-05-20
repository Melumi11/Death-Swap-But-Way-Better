execute as @s run function ds:items/use/all
tag @s add mob_forcefield
scoreboard players set @s mob_forcefield 18500
title @s title " "
execute if score Lang Core matches 1 run title @s subtitle {"text":">> Forcefield: 3 minutes! <<","color":"light_purple"}
execute if score Lang Core matches 2 run title @s subtitle {"text":">> 力场: 3分钟! <<","color":"light_purple"}

execute if score Lang Core matches 1 run tellraw @s {"text":">> You have a 3-minute long forcefield that protects you from mobs! That's awesome!! <<","color":"light_purple","bold":true}
execute if score Lang Core matches 2 run tellraw @s {"text":">> 你拥有一个持续2分钟的力场, 可以保护你免受怪物的攻击! 太棒了!! <<","color":"light_purple","bold":false}
execute as @s at @s run playsound minecraft:block.stone.break master @s ~ ~ ~ 9
execute as @s at @s run playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 9
execute as @s at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 9 2

execute as @s run function ds:items/after_use