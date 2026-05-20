execute if score Lang Core matches 1 run tellraw @s {"text":">> You take fall damage again! Those 5 minutes you probably forgot about are up! <<","color":"light_purple"}
execute if score Lang Core matches 2 run tellraw @s {"text":">> 你再次受到坠落伤害! 你可能已经忘记的那五分钟已经过去了! <<","color":"light_purple"}
title @s title " "
execute if score Lang Core matches 1 run title @s subtitle {"text":">> You take fall damage again! <<","color":"red"}
execute if score Lang Core matches 2 run title @s subtitle {"text":">> 你会再次受到坠落伤害! <<","color":"red"}
execute as @s at @s run playsound minecraft:entity.wolf.ambient master @s ~ ~ ~ 9 0.7
execute as @s at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 9 1.8
execute as @s run attribute @s minecraft:fall_damage_multiplier base reset
scoreboard players set @s no_fall_dam 0
tag @s remove no_fall_dam