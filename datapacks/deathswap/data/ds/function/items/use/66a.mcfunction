execute as @s run function ds:items/use/all
execute in minecraft:overworld run time set midnight
execute in minecraft:overworld if score isNight Core matches 1 run time set noon
effect clear @a minecraft:night_vision

execute if score isNight Core matches 0 if score Lang Core matches 1 run tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Set the time to midnight","color":"white"}]
execute if score isNight Core matches 1 if score Lang Core matches 1 run tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Set the time to day","color":"white"}]

execute if score isNight Core matches 0 if score Lang Core matches 2 run tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"将时间设置为午夜","color":"white"}]
execute if score isNight Core matches 1 if score Lang Core matches 2 run tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"将时间设置为中午","color":"white"}]

scoreboard players add isNight Core 1
execute if score isNight Core matches 2.. run scoreboard players set isNight Core 0

execute as @s run function ds:items/after_use