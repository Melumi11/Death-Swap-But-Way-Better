$execute as @p[scores={permPNo=$(s)},tag=96spying] run function ds:items/misc/end_96spying
$execute as @p[scores={permPNo=$(s)}] at @s run fill ~2 -62 ~2 ~-2 -62 ~-2 minecraft:bedrock
$execute as @p[scores={permPNo=$(s)}] at @s run fill ~2 -61 ~2 ~-2 -59 ~-2 minecraft:light[level=1]
$execute as @p[scores={permPNo=$(s)}] at @s run fill ~2 -58 ~2 ~-2 -58 ~-2 minecraft:deepslate
$execute as @p[scores={permPNo=$(s)}] at @s run tp @s ~ -61 ~
$execute as @p[scores={permPNo=$(s)}] at @s run setblock ~ -61 ~ minecraft:torch
$execute as @p[scores={permPNo=$(s)}] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 99 2

$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Teleported ","color":"yellow"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":" to Y level = -60 (bedrock layer)","color":"yellow"}]

execute as @s run function ds:items/after_use