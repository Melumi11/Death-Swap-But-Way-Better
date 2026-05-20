$execute as @p[scores={permPNo=$(s)},tag=96spying] run function ds:items/misc/end_96spying
$execute as @p[scores={permPNo=$(s)}] in ds:superflat run spreadplayers 0 0 10 29999000 false @s

$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Teleported ","color":"green"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":" to a superflat world","color":"green"}]
$execute as @p[scores={permPNo=$(s)}] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 9
execute as @s at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 9

execute as @s run function ds:items/after_use