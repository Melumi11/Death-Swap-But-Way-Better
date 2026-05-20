$execute as @p[scores={permPNo=$(s)}] at @s run summon lightning_bolt ~ ~ ~ {Tags:["ent"]}
$execute as @p[scores={permPNo=$(s)}] at @s run summon lightning_bolt ~ ~2 ~ {Tags:["ent"]}
$execute as @p[scores={permPNo=$(s)}] at @s run setblock ~ ~ ~ minecraft:fire

$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Struck ","color":"gold"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":" with lightning","color":"gold"}]

execute as @s run function ds:items/after_use