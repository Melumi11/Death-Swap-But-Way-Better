$spreadplayers 0 0 10000 29999000 false @p[scores={permPNo=$(s)}]
$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Teleported ","color":"light_purple"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":" far, far away from their previous location","color":"light_purple"}]
$execute as @p[scores={permPNo=$(s)}] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 99 2

execute as @s run function ds:items/after_use