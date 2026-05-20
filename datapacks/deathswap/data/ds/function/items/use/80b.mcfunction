$gamemode spectator @p[scores={permPNo=$(s)}]
$tag @p[scores={permPNo=$(s)}] add specMode
$scoreboard players set @p[scores={permPNo=$(s)}] specMode 2100
$title @p[scores={permPNo=$(s)}] title " "
$title @p[scores={permPNo=$(s)}] subtitle ">> Spectator Mode: 20 seconds <<"

$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Put ","color":"white"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":" into spectator mode for 20 seconds","color":"white"}]
$execute as @p[scores={permPNo=$(s)}] at @s run playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 9

execute as @s run function ds:items/after_use