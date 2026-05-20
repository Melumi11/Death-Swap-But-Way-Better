execute as @s at @s run setblock ~ ~-0.9 ~ minecraft:bedrock
execute as @s at @s run setblock ~ ~2 ~ minecraft:bedrock
execute as @s at @s run setblock ~ ~ ~ minecraft:bedrock
scoreboard players set @s bedrock_trail 0
tag @s remove bedrock_trail
tellraw @s {"text":">> Your bedrock trail wore off <<","color":"green"}
title @s title " "
execute if score Lang Core matches 1 run title @s subtitle {"text":">> Bedrock trail wore off! <<","color":"green"}
execute if score Lang Core matches 2 run title @s subtitle {"text":">> 基岩小径磨损殆尽! <<","color":"green"}