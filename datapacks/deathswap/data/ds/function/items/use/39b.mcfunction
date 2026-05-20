$tag @p[scores={permPNo=$(s)}] add keys_inverted
$scoreboard players set @p[scores={permPNo=$(s)}] keys_inverted 4500
$title @p[scores={permPNo=$(s)}] title " "
$title @p[scores={permPNo=$(s)}] subtitle {"text":"Keys Inverted: 45 seconds","color":"light_purple"}

$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Inverted ","color":"light_purple"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":"'s movement keys","color":"light_purple"}]
execute as @s at @s run playsound minecraft:entity.spider.ambient master @s ~ ~ ~ 9 0.7
$execute as @p[scores={permPNo=$(s)}] at @s run playsound minecraft:entity.spider.ambient master @s ~ ~ ~ 9 0.7

execute as @s run function ds:items/after_use