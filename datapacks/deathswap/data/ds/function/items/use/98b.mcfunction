$tag @p[scores={permPNo=$(s)}] add no_craft
$scoreboard players set @p[scores={permPNo=$(s)}] no_craft 11000
$title @p[scores={permPNo=$(s)}] title " "
$execute if score Lang Core matches 1 run title @p[scores={permPNo=$(s)}] subtitle {"text":"You can't use crafting tables & furnaces: 90 secs!","color":"yellow"}
$execute if score Lang Core matches 2 run title @p[scores={permPNo=$(s)}] subtitle {"text":"你不能使用工作台和熔炉: 90秒!","color":"yellow"}

effect clear @a minecraft:night_vision

$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Blocked ","color":"yellow"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":" from using crafting tables & furnaces for 90 seconds","color":"yellow"}]
$execute as @p[scores={permPNo=$(s)}] at @s run playsound minecraft:block.glass.break master @s ~ ~ ~ 99 0.85

execute as @s run function ds:items/after_use