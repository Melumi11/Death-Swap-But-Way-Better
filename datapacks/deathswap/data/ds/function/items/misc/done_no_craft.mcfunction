execute if score Lang Core matches 1 run tellraw @s {"text":">> You can craft & smelt stuff again! <<","color":"yellow"}
execute if score Lang Core matches 2 run tellraw @s {"text":">> 你可以再次制作和熔炼物品了! <<","color":"yellow"}
title @s title " "
execute if score Lang Core matches 1 run title @s subtitle {"text":">> You can use crafting tables & furnaces again! <<","color":"yellow"}
execute if score Lang Core matches 2 run title @s subtitle {"text":">> 你可以再次使用工作台和熔炉了! <<","color":"yellow"}
execute as @s at @s run playsound minecraft:entity.wolf.ambient master @s ~ ~ ~ 9
scoreboard players set @s no_craft 0
tag @s remove no_craft