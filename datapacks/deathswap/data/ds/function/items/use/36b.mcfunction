$execute as @p[scores={permPNo=$(s)}] at @s run summon bee ~ ~ ~
$scoreboard players set @p[scores={permPNo=$(s)}] many_bees 25
$tag @p[scores={permPNo=$(s)}] add many_bees

effect clear @a minecraft:night_vision

$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Summoned a horde of bees around ","color":"yellow"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":"'s location","color":"yellow"}]

$execute as @p[scores={permPNo=$(s)}] at @s run playsound minecraft:entity.bee.loop
$execute as @p[scores={permPNo=$(s)}] at @s run playsound minecraft:entity.bee.loop
$execute as @p[scores={permPNo=$(s)}] at @s run playsound minecraft:entity.bee.loop master @s ~ ~ ~ 99 2
$execute as @p[scores={permPNo=$(s)}] at @s run playsound minecraft:entity.bee.loop_aggressive
$execute as @p[scores={permPNo=$(s)}] at @s run playsound minecraft:entity.bee.loop_aggressive
$execute as @p[scores={permPNo=$(s)}] at @s run playsound minecraft:entity.bee.loop_aggressive master @s ~ ~ ~ 99 2

execute as @s run function ds:items/after_use