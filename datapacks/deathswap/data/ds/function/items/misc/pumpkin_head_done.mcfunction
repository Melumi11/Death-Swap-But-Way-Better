clear @s minecraft:carved_pumpkin
execute as @s run attribute @s minecraft:camera_distance base reset
scoreboard players set @s pumpkin_head 0
tag @s remove pumpkin_head