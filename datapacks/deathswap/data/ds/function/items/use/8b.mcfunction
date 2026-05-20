$scoreboard players set @p[scores={permPNo=$(s)}] 100villagers 26
$tag @p[scores={permPNo=$(s)}] add 100villagers
$execute as @p[scores={permPNo=$(s)}] at @s run summon minecraft:villager ~ ~ ~ {Tags:["ent"]}

$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Spawned 100 villagers at ","color":"gold"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":"s location","color":"gold"}]

execute as @s run function ds:items/after_use