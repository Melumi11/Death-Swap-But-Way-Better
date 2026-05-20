tellraw @s {"text":">> Your keys are back to normal! <<","color":"green"}
title @s title " "
execute if score Lang Core matches 1 run title @s subtitle {"text":"Your keys are back to normal!","color":"green"}
execute if score Lang Core matches 2 run title @s subtitle {"text":"您的钥匙已恢复正常!","color":"green"}
scoreboard players set @s keys_inverted 0
tag @s remove keys_inverted