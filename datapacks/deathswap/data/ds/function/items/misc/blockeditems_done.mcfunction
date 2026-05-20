scoreboard players set @s blockedItems 0
tag @s remove blockedItems
tellraw @s {"text":">> You can use items again!!! <<","color":"green","bold":true}
title @s title " "
execute if score Lang Core matches 1 run title @s subtitle {"text":">> You can use items again! <<","color":"green"}
execute if score Lang Core matches 2 run title @s subtitle {"text":">> 您可以再次使用这些物品! <<","color":"green"}
execute as @s at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 9 2