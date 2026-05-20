execute as @s run function ds:items/use/all

setblock ~ ~-4 ~4 minecraft:tuff
fill ~ ~0 ~3 ~ ~12 ~3 minecraft:tuff
fill ~ ~0 ~5 ~ ~12 ~5 minecraft:tuff
fill ~ ~0 ~4 ~ ~12 ~4 minecraft:light
fill ~1 ~0 ~4 ~1 ~12 ~4 minecraft:tuff
fill ~-1 ~0 ~4 ~-1 ~12 ~4 minecraft:tuff
fill ~ ~0 ~2 ~ ~12 ~2 minecraft:ladder

fill ~ ~-3 ~3 ~ ~0 ~3 minecraft:tuff
fill ~ ~-3 ~5 ~ ~0 ~5 minecraft:tuff
fill ~ ~-3 ~4 ~ ~0 ~4 minecraft:light
fill ~1 ~-3 ~4 ~1 ~0 ~4 minecraft:tuff
fill ~-1 ~-3 ~4 ~-1 ~0 ~4 minecraft:tuff
fill ~ ~-3 ~2 ~ ~0 ~2 minecraft:ladder
setblock ~ ~-3 ~4 minecraft:pointed_dripstone[thickness=frustum,vertical_direction=up]
setblock ~ ~-2 ~4 minecraft:pointed_dripstone[thickness=tip,vertical_direction=up]

fill ~ ~ ~ ~ ~1 ~1 minecraft:air
fill ~ ~13 ~2 ~ ~14 ~4 minecraft:air
execute as @s at @s run rotate @s 0 ~

effect clear @a minecraft:night_vision

execute if score Lang Core matches 1 run tellraw @s {"text":"You build a Stalagmite trap in front of you!","color":"gold"}
execute if score Lang Core matches 2 run tellraw @s {"text":"你在你面前建造了一个石笋陷阱!","color":"gold"}

execute as @s run function ds:items/after_use