execute as @s run attribute @s minecraft:scale base reset
scoreboard players set @s tiny_scale 0
tag @s remove tiny_scale
tellraw @s {"text":">> Your player size is back to normal! <<","color":"red","bold":true}