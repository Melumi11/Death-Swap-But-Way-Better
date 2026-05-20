execute as @s run function ds:items/use/all
give @s minecraft:obsidian 9

tellraw @s {"text":"You got 9 obsidian!","color":"gray"}
execute as @s at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 9

execute as @s run function ds:items/after_use
