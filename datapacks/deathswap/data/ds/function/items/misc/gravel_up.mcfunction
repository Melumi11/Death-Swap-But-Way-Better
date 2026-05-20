execute as @e[tag=gravel_tower] at @s store result score @s Ycoord run data get entity @s Pos[1] 1
execute as @e[tag=gravel_tower] at @s run setblock ~ ~ ~ minecraft:gravel
execute as @e[tag=gravel_tower] at @s run tp @s ~ ~0.5 ~
execute as @e[tag=gravel_tower] at @s if score @s Ycoord matches 319.. run kill @s