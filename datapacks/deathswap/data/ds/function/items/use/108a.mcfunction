execute as @s run function ds:items/use/all

gamerule max_block_modifications 48000
execute as @s at @s run fill ~-48 -52 ~-48 ~48 -48 ~48 light[level=4] replace deepslate
execute as @s at @s run fill ~-48 -47 ~-48 ~48 -45 ~48 light[level=4] replace deepslate
execute as @s at @s run fill ~-48 -44 ~-48 ~48 -42 ~48 light[level=4] replace deepslate
execute as @s at @s run fill ~-48 -41 ~-48 ~48 -38 ~48 light[level=4] replace deepslate
gamerule max_block_modifications 32768

place structure minecraft:ancient_city
fill ~-3 ~1 ~ ~-4 0 ~1 minecraft:air
fill ~-3 -1 ~ ~-4 -54 ~1 minecraft:air
fill ~-4 ~-1 ~ ~-4 0 ~1 minecraft:ladder[facing=east]
fill ~-4 -1 ~ ~-4 -54 ~1 minecraft:ladder[facing=east]
fill ~-1 ~ ~ ~-4 ~1 ~ minecraft:light[level=8]
setblock ~-5 ~ ~ birch_sign[rotation=12]{front_text:{messages:["Ancient City","古城","| | | |","V V V V"]}} replace
setblock ~-5 ~1 ~ minecraft:air
rotate @s 90 ~

execute if score Lang Core matches 1 run tellraw @s {"text":"> Go down the ladder and you'll find the Ancient City! (May not have spawned if in the Nether or the End!)","color":"yellow","bold":true}
execute if score Lang Core matches 2 run tellraw @s {"text":"> 顺着梯子下去, 你就会发现那座古城! (如果你身处下界或末地, 它可能不会生成)","color":"yellow","bold":false}
execute as @s at @s run playsound minecraft:block.stone.break master @s ~ ~ ~ 9

execute as @s run function ds:items/after_use