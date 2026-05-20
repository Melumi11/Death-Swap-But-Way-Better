$execute as @p[scores={permPNo=$(s)}] at @s run fill ~14 ~6 ~14 ~-14 ~-6 ~-14 minecraft:bell[attachment=floor] replace air
## $execute as @p[scores={permPNo=$(s)}] at @s run fill ~ ~ ~ ~ ~1 ~ minecraft:air

$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Replaced all air blocks around ","color":"yellow"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":" with bells","color":"yellow"}]

execute as @s run function ds:items/after_use