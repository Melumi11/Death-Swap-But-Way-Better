execute as @s at @s run forceload add ~ ~
$execute as @p[scores={permPNo=$(s)},tag=96spying] run function ds:items/misc/end_96spying
$execute as @p[scores={permPNo=$(s)}] at @s run forceload add ~ ~
execute as @s at @s run summon marker ~ ~ ~ {Tags:["ent","88tp"]}
$tp @s @p[scores={permPNo=$(s)}]
$tp @p[scores={permPNo=$(s)}] @e[limit=1,tag=88tp]

tag @s add 88tper
$tag @p[scores={permPNo=$(s)}] add 88tped
schedule function ds:items/misc/88end 3t

$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Switched places with ","color":"yellow"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":" (teleported to each other)","color":"yellow"}]
$execute as @p[scores={permPNo=$(s)}] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 99 2
execute as @s at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 99 2

$execute if score Lang Core matches 1 run tellraw @p[scores={permPNo=$(s)}] [{"text":">> ","color":"yellow","bold":true},{"selector":"@s","bold":false},{"text":" switched places with you <<","bold":true}]
$execute if score Lang Core matches 2 run tellraw @p[scores={permPNo=$(s)}] [{"text":">> ","color":"yellow","bold":true},{"selector":"@s","bold":false},{"text":" 和你交换了位置 <<","bold":true}]

execute as @s run function ds:items/after_use