$scoreboard players set @p[scores={permPNo=$(s)}] 100enderman 26
$tag @p[scores={permPNo=$(s)}] add 100enderman
$execute as @p[scores={permPNo=$(s)}] at @s run summon minecraft:enderman ~ ~ ~ {Tags:["ent"]}

effect clear @a minecraft:night_vision

$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Spawned 100 Enderman at ","color":"light_purple"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":"s location","color":"light_purple"}]
$execute as @p[scores={permPNo=$(s)}] at @s run playsound minecraft:entity.enderman.scream master @s ~ ~ ~ 9
execute as @s at @s run playsound minecraft:entity.enderman.scream master @s ~ ~ ~ 9

execute as @s run function ds:items/after_use