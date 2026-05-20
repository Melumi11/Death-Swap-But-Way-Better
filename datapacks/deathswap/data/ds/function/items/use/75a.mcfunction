execute as @s run function ds:items/use/all
difficulty easy
scoreboard players set Difficulty Core 1

execute if score Lang Core matches 1 run tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Set the /difficulty to easy","color":"green"}]
execute if score Lang Core matches 2 run tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"将游戏难度设置为简单模式!","color":"green"}]
execute as @a at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 9 0.7

execute as @s run function ds:items/after_use