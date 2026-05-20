tellraw @s {"text":">> WARNING: Your shield has worn off! Others can use items on you again! <<","color":"red"}
title @s title " "
execute if score Lang Core matches 1 run title @s subtitle {"text":">> Your shield wore off! <<","color":"red"}
execute if score Lang Core matches 2 run title @s subtitle {"text":">> 你的护盾已失效! <<","color":"red"}
execute as @s at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 99 0
tag @s remove Shield
scoreboard players set @s Shield 0