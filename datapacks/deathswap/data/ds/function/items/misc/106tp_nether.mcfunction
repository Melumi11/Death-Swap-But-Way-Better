$execute as @s in minecraft:the_nether run tp @s $(x) $(y) $(z)
tag @s add 106tp_guard

execute as @s at @s run playsound minecraft:block.portal.travel master @s ~ ~ ~ 9

execute as @s at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:netherrack
execute as @s at @s run fill ~ ~ ~ ~ ~1 ~ minecraft:light[level=7]

schedule function ds:items/misc/106tp_guard 2t