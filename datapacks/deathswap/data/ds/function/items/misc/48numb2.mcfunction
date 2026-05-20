execute as @a[tag=48blocked] at @s run fill ~176 318 ~176 ~-176 318 ~-176 minecraft:obsidian
schedule function ds:items/misc/48numb3 1t

execute as @a[tag=48blocked] at @s run forceload remove ~176 ~176 ~-176 ~-176
gamerule max_block_modifications 32768