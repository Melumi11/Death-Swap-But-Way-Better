###$effect give @p[scores={permPNo=$(s)}] minecraft:jump_boost 42 0 false
$execute as @p[scores={permPNo=$(s)}] run attribute @s minecraft:jump_strength base set 0.0
$scoreboard players set @p[scores={permPNo=$(s)}] jump_disabled 6100
$tag @p[scores={permPNo=$(s)}] add jump_disabled

$title @p[scores={permPNo=$(s)}] title " "
$title @p[scores={permPNo=$(s)}] subtitle {"text":"You can't jump: 1 minute","color":"green"}

$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Disabled ","color":"green"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":" 's ability to jump for 60 seconds","color":"green"}]
execute as @a at @s run playsound minecraft:block.slime_block.break master @s ~ ~ ~ 9 0
execute as @s run function ds:items/after_use