tellraw @s {"text":"Your fast mining speed is over!","color":"aqua"}
title @s title " "
title @s subtitle {"text":">> 3x mining speed: OVER! <<","color":"aqua"}
execute as @s at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 9 2
execute as @s run attribute @s minecraft:mining_efficiency base reset
execute as @s run attribute @s minecraft:block_break_speed base reset
scoreboard players set @s mine_faster 0
tag @s remove mine_faster