$execute as @p[scores={permPNo=$(s)},tag=96spying] run function ds:items/misc/end_96spying
fill -3 79 -11 1 77 -7 minecraft:light
fill -3 76 -11 1 76 -7 minecraft:end_portal
$execute in minecraft:overworld run tp @p[scores={permPNo=$(s)}] -1 77 -9 180 0
$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Teleported ","color":"light_purple"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":" to the End dimension!'","color":"light_purple"}]
$execute as @p[scores={permPNo=$(s)}] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 99 2
execute as @s run function ds:items/after_use