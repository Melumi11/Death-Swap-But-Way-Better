execute if score Lang Core matches 1 run tellraw @s {"text":">> Your ears aren't bleeding anymore! 现在你又能听见了! <<","color":"light_purple"}
execute if score Lang Core matches 2 run tellraw @s {"text":">> 你的耳朵不再流血了! 你可能已经忘记的那五分钟已经过去了! <<","color":"light_purple"}
title @s title " "
execute if score Lang Core matches 1 run title @s subtitle {"text":">> Ears stopped bleeding! <<","color":"red"}
execute if score Lang Core matches 2 run title @s subtitle {"text":">> 你的耳朵已经停止出血了! <<","color":"red"}
execute as @s at @s run playsound minecraft:entity.wolf.ambient master @s ~ ~ ~ 9
scoreboard players set @s ears_bleed 0
tag @s remove ears_bleed