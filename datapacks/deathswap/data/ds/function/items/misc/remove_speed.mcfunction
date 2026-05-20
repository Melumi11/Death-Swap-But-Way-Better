execute as @s run attribute @s minecraft:movement_speed base reset
tellraw @s {"text":"Your movement speed is back to normal! (finally..)","color":"aqua"}
scoreboard players set @s mega_speed 0