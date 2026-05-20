# FUNCTION NOT IN USE

$execute as @p[scores={permPNo=$(s)}] at @s run summon wither ~ ~6 ~ {PersistenceRequired:1b,Tags:["ent"]}
$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Summoned a wither above ","color":"gray"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":"'s head!'","color":"gray"}]
execute as @a at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 99
execute as @s run function ds:items/after_use