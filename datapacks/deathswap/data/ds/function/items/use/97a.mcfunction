execute as @s run function ds:items/use/all
execute if score Lang Core matches 1 run tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Shielded themself from other players' negative items for 2.5 minutes!","color":"gold"}]
execute if score Lang Core matches 2 run tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"他们用屏障保护自己免受其他玩家负面物品的影响，持续了2.5分钟!","color":"gold"}]

execute if score Lang Core matches 1 run tellraw @s {"text":">> Nobody can use any items on you for 2.5 minutes now! <<","color":"green","bold":true}
execute if score Lang Core matches 2 run tellraw @s {"text":">> 在接下来的2.5分钟内, 任何人都不能对你使用任何物品! <<","color":"green","bold":true}

tag @s add Shield
scoreboard players set @s Shield 15100
execute as @a at @s run playsound minecraft:item.shield.break master @s ~ ~ ~ 9
execute as @s run function ds:items/after_use

# === DO NOT COPY