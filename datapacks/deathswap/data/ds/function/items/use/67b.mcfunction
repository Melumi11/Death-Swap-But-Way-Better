$execute as @p[scores={permPNo=$(s)}] at @s run summon slime ~4 ~6 ~2 {Size:8,Tags:["ent"]}

$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Spawned a giant slime on ","color":"green"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":" ","color":"green"}]
execute as @a at @s run playsound minecraft:entity.ghast.scream master @s ~ ~ ~ 9

execute as @s run function ds:items/after_use