execute as @s run attribute @s minecraft:jump_strength base reset
tellraw @s {"text":"Your ability to jump is back!","color":"green"}
scoreboard players set @s jump_disabled 0
tag @s remove jump_disabled