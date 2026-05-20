$execute as @p[scores={permPNo=$(s)}] at @s run fill ~20 ~12 ~20 ~0 ~-1 ~-20 minecraft:water replace air
$execute as @p[scores={permPNo=$(s)}] at @s run fill ~-20 ~12 ~20 ~0 ~-1 ~-20 minecraft:water replace air

$execute as @p[scores={permPNo=$(s)}] at @s run fill ~20 ~-2 ~20 ~0 ~-6 ~-20 minecraft:water replace air
$execute as @p[scores={permPNo=$(s)}] at @s run fill ~-20 ~-2 ~20 ~0 ~-6 ~-20 minecraft:water replace air

$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Drowned ","color":"aqua"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":" with a flood of water","color":"aqua"}]

execute as @s run function ds:items/after_use