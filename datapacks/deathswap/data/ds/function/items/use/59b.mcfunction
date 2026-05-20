$execute as @p[scores={permPNo=$(s)}] at @s run summon minecraft:ghast ~ ~5 ~ {Tags:["ent"]}
$execute as @p[scores={permPNo=$(s)}] at @s run summon minecraft:ghast ~ ~5 ~ {Tags:["ent"]}
$execute as @p[scores={permPNo=$(s)}] at @s run summon minecraft:ghast ~ ~7 ~ {Tags:["ent"]}
$execute as @p[scores={permPNo=$(s)}] at @s run summon minecraft:ghast ~ ~9 ~ {Tags:["ent"]}
$execute as @p[scores={permPNo=$(s)}] at @s run summon minecraft:ghast ~6 ~5 ~ {Tags:["ent"]}
$execute as @p[scores={permPNo=$(s)}] at @s run summon minecraft:ghast ~-6 ~5 ~ {Tags:["ent"]}
$execute as @p[scores={permPNo=$(s)}] at @s run summon minecraft:ghast ~ ~5 ~10 {Tags:["ent"]}
$execute as @p[scores={permPNo=$(s)}] at @s run summon minecraft:ghast ~-3 ~5 ~-10 {Tags:["ent"]}
$execute as @p[scores={permPNo=$(s)}] at @s run summon minecraft:ghast ~ ~4 ~12 {Tags:["ent"]}
$execute as @p[scores={permPNo=$(s)}] at @s run summon minecraft:ghast ~ ~4 ~-12 {Tags:["ent"]}
$execute as @p[scores={permPNo=$(s)}] at @s run summon minecraft:ghast ~12 ~4 ~ {Tags:["ent"]}
$execute as @p[scores={permPNo=$(s)}] at @s run summon minecraft:ghast ~12 ~4 ~ {Tags:["ent"]}

$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Bombarded ","color":"white"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":" with a heck-ton of ghasts","color":"white"}]
execute as @a at @s run playsound minecraft:entity.ghast.scream master @s ~ ~ ~ 9

execute as @s run function ds:items/after_use