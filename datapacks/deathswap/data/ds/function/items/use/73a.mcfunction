execute as @s run function ds:items/use/all
difficulty hard
scoreboard players set Difficulty Core 3

execute if score Lang Core matches 1 run tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Set the /difficulty to hard!","color":"white"}]
execute if score Lang Core matches 2 run tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"将游戏难度设置为困难模式!","color":"white"}]
execute as @a at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 9 0.7

execute as @s run function ds:items/after_use