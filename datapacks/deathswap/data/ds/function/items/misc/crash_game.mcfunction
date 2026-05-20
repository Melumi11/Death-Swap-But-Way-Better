scoreboard players set someoneCrashed Core 1
execute as @a[tag=playing,tag=game_crashed] at @s run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 minecraft:grass_block
execute as @a[tag=playing,tag=game_crashed] at @s run summon marker ~ ~ ~ {Tags:["ent","crash_rejoin"]}

execute as @a[tag=playing,tag=game_crashed] at @s run particle minecraft:electric_spark ~ ~ ~ 1 1 1 5 999999999 force @s
scoreboard players set waitForCrashPlayer Core 1