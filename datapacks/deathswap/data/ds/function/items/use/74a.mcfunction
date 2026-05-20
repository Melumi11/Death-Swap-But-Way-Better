execute as @s run function ds:items/use/all
difficulty normal
scoreboard players set Difficulty Core 2

execute if score Lang Core matches 1 run tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Set the /difficulty to normal","color":"gold"}]
execute if score Lang Core matches 2 run tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"将游戏难度设置为普通!","color":"gold"}]
execute as @a at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 9 0.7

execute as @s run function ds:items/after_use