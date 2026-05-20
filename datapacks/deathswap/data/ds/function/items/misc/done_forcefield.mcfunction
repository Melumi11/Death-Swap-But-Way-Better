execute if score Lang Core matches 1 run tellraw @s {"text":">> Your forcefield wore off! <<","color":"red"}
execute if score Lang Core matches 2 run tellraw @s {"text":">> 你的力场消失了! <<","color":"red"}
title @s title " "
execute if score Lang Core matches 1 run title @s subtitle {"text":">> Your forcefield wore off! Monsters can attack you again! <<","color":"red"}
execute if score Lang Core matches 2 run title @s subtitle {"text":">> 你的力场消失了! 怪物可能会再次攻击你! <<","color":"red"}
execute as @s at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 9 0.6
execute as @s at @s run playsound minecraft:item.shield.break master @s ~ ~ ~ 9
scoreboard players set @s mob_forcefield 0
tag @s remove mob_forcefield