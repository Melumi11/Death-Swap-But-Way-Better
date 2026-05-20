gamerule max_block_modifications 125000
$execute as @p[scores={permPNo=$(s)}] at @s run forceload add ~176 ~176 ~-176 ~-176
# $execute as @p[scores={permPNo=$(s)}] at @s run fill ~176 318 ~176 ~-176 318 ~-176 minecraft:obsidian
# $execute as @p[scores={permPNo=$(s)}] at @s run forceload remove ~176 ~176 ~-176 ~-176
# gamerule max_block_modifications 32768
effect clear @a minecraft:night_vision
$tag @p[scores={permPNo=$(s)}] add 48blocked
schedule function ds:items/misc/48numb2 1t

$execute as @p[scores={permPNo=$(s)}] at @s run fill ~64 317 ~64 ~-64 317 ~-64 minecraft:obsidian
$execute as @p[scores={permPNo=$(s)}] at @s run fill ~16 316 ~16 ~-16 316 ~-16 minecraft:obsidian

$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Blocked out the sun for ","color":"white"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":" with a giant obsidian ceiling","color":"white"}]
$execute as @p[scores={permPNo=$(s)}] at @s run playsound minecraft:block.stone.break master @s ~ ~ ~ 99
execute as @s at @s run playsound minecraft:block.stone.break master @s ~ ~ ~ 99

execute as @s run function ds:items/after_use