execute as @s run function ds:items/use/all
execute as @s at @s run fill ~3 ~ ~ ~3 ~ ~3 minecraft:obsidian
execute as @s at @s run fill ~3 ~4 ~ ~3 ~4 ~3 minecraft:obsidian
execute as @s at @s run fill ~3 ~ ~ ~3 ~4 ~ minecraft:obsidian
execute as @s at @s run fill ~3 ~ ~3 ~3 ~4 ~3 minecraft:obsidian
execute as @s at @s run fill ~3 ~1 ~1 ~3 ~3 ~2 minecraft:nether_portal[axis=z]
execute as @s at @s run fill ~1 ~ ~ ~2 ~2 ~2 minecraft:air
execute as @s at @s run rotate @s -90 ~

tellraw @s {"text":">> A nether portal was placed in front of you! <<","color":"red"}
execute as @s at @s run playsound minecraft:block.stone.break master @s ~ ~ ~ 99
execute as @s at @s run playsound minecraft:entity.blaze.shoot master @s ~ ~ ~ 9

execute as @s run function ds:items/after_use