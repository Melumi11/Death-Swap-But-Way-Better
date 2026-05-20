$tag @p[scores={permPNo=$(s)}] add ears_bleed
$scoreboard players set @p[scores={permPNo=$(s)}] ears_bleed 4500
$title @p[scores={permPNo=$(s)}] title " "
$title @p[scores={permPNo=$(s)}] subtitle {"text":">> YOU CAN'T HEAR ANYTHING! 45 secs <<","color":"red"}

$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Make ","color":"red"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":"'s ears bleed for 45 seconds","color":"red"}]
$execute as @p[scores={permPNo=$(s)}] at @s run playsound minecraft:block.stone.break master @s ~ ~ ~ 99

execute as @s run function ds:items/after_use