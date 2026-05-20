execute as @s run function ds:items/use/all
execute if score Lang Core matches 1 run tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Shielded themself from other players' negative items for 2 minutes!","color":"gold"}]
execute if score Lang Core matches 2 run tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"他们在两分钟内免疫其他玩家的负面道具攻击!","color":"gold"}]

execute if score Lang Core matches 1 run tellraw @s {"text":">> Nobody can use any items on you for 2 minutes now! <<","color":"green","bold":true}
execute if score Lang Core matches 2 run tellraw @s {"text":">> 现在起两分钟内，任何人都无法对你使用任何物品! <<","color":"green","bold":true}

tag @s add Shield
scoreboard players set @s Shield 12200
execute as @a at @s run playsound minecraft:item.shield.break master @s ~ ~ ~ 9
execute as @s run function ds:items/after_use