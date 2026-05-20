$tag @p[scores={permPNo=$(s)}] add is_peeing
$scoreboard players set @p[scores={permPNo=$(s)}] is_peeing 6100
$title @p[scores={permPNo=$(s)}] title " "
$title @p[scores={permPNo=$(s)}] subtitle {"text":"You are peeing...","color":"yellow"}

$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Made ","color":"yellow"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":" continuously pee for 1 minute straight","color":"yellow"}]
$execute as @p[scores={permPNo=$(s)}] at @s run playsound minecraft:entity.player.splash master @s ~ ~ ~ 99 1.6
execute as @s at @s run playsound minecraft:entity.player.splash master @s ~ ~ ~ 99 1

execute as @s run function ds:items/after_use