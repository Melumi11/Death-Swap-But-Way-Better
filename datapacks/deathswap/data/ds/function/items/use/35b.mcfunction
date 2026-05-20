$execute as @p[scores={permPNo=$(s)}] at @s run fill ~ ~ ~ ~ ~1 ~ minecraft:air
$execute as @p[scores={permPNo=$(s)}] at @s run fill ~1 ~2 ~1 ~-1 ~12 ~-1 minecraft:air
$execute as @p[scores={permPNo=$(s)}] at @s run fill ~28 ~9 ~28 ~-28 ~10 ~-28 minecraft:lava

$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Spawned a layer of lava above ","color":"gold"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":" 's head","color":"gold"}]

execute as @s run function ds:items/after_use