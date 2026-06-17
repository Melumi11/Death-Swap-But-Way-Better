execute as @s run function ds:items/use/all
place structure minecraft:mansion
rotate @s 90 ~
effect clear @a minecraft:night_vision

execute if score Lang Core matches 1 run tellraw @s {"text":">> A Woodland Mansion was built near you!","color":"yellow","bold":false}
execute if score Lang Core matches 2 run tellraw @s {"text":">> 您附近建了一座林地庄园!","color":"yellow","bold":false}
execute as @s at @s run playsound minecraft:block.stone.break master @s ~ ~ ~ 9

execute as @s run function ds:items/after_use