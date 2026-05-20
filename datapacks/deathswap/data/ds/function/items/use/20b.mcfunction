$execute as @p[scores={permPNo=$(s)}] at @s run fill ~4 ~3 ~4 ~-4 ~-2 ~-4 minecraft:barrier hollow
$execute as @p[scores={permPNo=$(s)}] at @s run setblock ~ ~-1 ~ minecraft:torch

$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Trapped ","color":"white"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":" in an annoying barrier block cage","color":"white"}]

execute as @s run function ds:items/after_use