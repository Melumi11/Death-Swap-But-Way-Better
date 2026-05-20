execute as @s run attribute @s minecraft:scale base reset
scoreboard players set @s huge_scale 0
tag @s remove huge_scale
tellraw @s {"text":">> Your player size is back to normal! <<","color":"green","bold":true}