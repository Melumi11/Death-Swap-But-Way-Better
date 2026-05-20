execute as @s run function ds:items/use/all
gamerule max_block_modifications 48000
execute as @s at @s run fill ~-20 8 ~-20 ~20 35 ~20 light[level=4] replace stone
execute as @s at @s run fill ~-20 -10 ~-20 ~20 -16 ~20 light[level=4] replace deepslate
gamerule max_block_modifications 32768
place structure minecraft:trial_chambers
fill ~-3 ~1 ~ ~-4 -60 ~1 minecraft:air
fill ~-4 ~-1 ~ ~-4 -60 ~1 minecraft:ladder[facing=east]
fill ~-1 ~ ~ ~-4 ~1 ~ minecraft:light[level=8]
setblock ~-5 ~ ~ birch_sign[rotation=12]{front_text:{messages:["Trial Chamber","审判分庭","| | | |","V V V V"]}} replace
setblock ~-5 ~1 ~ minecraft:air
rotate @s 90 ~

execute if score Lang Core matches 1 run tellraw @s {"text":"> Go down the ladder and you'll find the Trial Chamber! (It's around y = at 30)","color":"green","bold":true}
execute if score Lang Core matches 2 run tellraw @s {"text":"> 顺着梯子下去, 就能到达审判室! (大约在 y = 30 处)","color":"green","bold":false}
execute as @s at @s run playsound minecraft:block.stone.break master @s ~ ~ ~ 9

execute as @s run function ds:items/after_use