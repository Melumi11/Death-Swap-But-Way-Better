execute as @s run function ds:items/use/all
scoreboard players set @s no_fall_dam 30100
tag @s add no_fall_dam
title @s title " "
execute if score Lang Core matches 1 run title @s subtitle {"text":">> NO FALL DAMAGE! 5 Mins <<","color":"yellow"}
execute if score Lang Core matches 2 run title @s subtitle {"text":">> 无坠落伤害! 5 分钟 <<","color":"yellow"}
execute as @s run attribute @s minecraft:fall_damage_multiplier base set 0.0

execute if score Lang Core matches 1 run tellraw @s [{"text":">> GREAT NEWS! ","color":"gold","bold":true},{"text":"You won't take ANY fall damage for 5 minutes! <<","color":"yellow","bold":false}]
execute if score Lang Core matches 2 run tellraw @s [{"text":">> 好消息! ","color":"gold","bold":true},{"text":"5分钟内你不会受到任何坠落伤害! <<","color":"yellow","bold":false}]
execute as @s at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 9
execute as @s at @s run playsound minecraft:entity.wolf.ambient master @s ~ ~ ~ 9

execute as @s run function ds:items/after_use