execute as @s run function ds:items/use/all
execute if score Lang Core matches 1 run tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Shielded themself from other players' negative items for 3 minutes!","color":"gold"}]
execute if score Lang Core matches 2 run tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"在3分钟内，他们可以免受其他玩家的负面道具的影响!","color":"gold"}]

effect clear @a minecraft:night_vision

execute if score Lang Core matches 1 run tellraw @s {"text":">> Nobody can use any items on you for 3 minutes now! <<","color":"green","bold":true}
execute if score Lang Core matches 2 run tellraw @s {"text":">> 现在起三分钟内，任何人都不能对你使用任何物品! <<","color":"green","bold":true}

tag @s add Shield
scoreboard players set @s Shield 18200
execute as @a at @s run playsound minecraft:item.shield.break master @s ~ ~ ~ 9
execute as @s run function ds:items/after_use