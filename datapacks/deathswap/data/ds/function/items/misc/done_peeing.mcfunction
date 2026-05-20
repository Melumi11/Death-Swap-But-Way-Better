execute if score Lang Core matches 1 run tellraw @s {"text":"You are done peeing!","color":"yellow"}
execute if score Lang Core matches 2 run tellraw @s {"text":">> 你的力场消失了! <<","color":"yellow"}
title @s title " "
execute if score Lang Core matches 1 run title @s subtitle {"text":">> Your bladder is finally empty! <<","color":"yellow"}
execute if score Lang Core matches 2 run title @s subtitle {"text":">> 你的力场消失了! 怪物可能会再次攻击你! <<","color":"yellow"}
scoreboard players set @s is_peeing 0
tag @s remove is_peeing

# TRANSLATE THESE