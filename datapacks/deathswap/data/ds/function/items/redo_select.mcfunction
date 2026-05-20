execute if score Lang Core matches 1 run tellraw @s {"text":"\n\n>> That player is shielded or eliminated! Select someone else! <<","color":"red","bold":true}
execute if score Lang Core matches 2 run tellraw @s {"text":"\n\n>> 该玩家受到保护或已被淘汰! 选择其他玩家! <<","color":"red","bold":false}

scoreboard players set @s select 0
scoreboard players enable @s select
execute as @s run function ds:items/select_template