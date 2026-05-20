$tag @p[scores={permPNo=$(s)}] add no_interaction
$scoreboard players set @p[scores={permPNo=$(s)}] no_interaction 3100
$execute as @p[scores={permPNo=$(s)}] run attribute @s minecraft:block_interaction_range base set 0.0
## $execute as @p[scores={permPNo=$(s)}] run attribute @s minecraft:entity_interaction_range base set 0.0
$title @p[scores={permPNo=$(s)}] title " "
$title @p[scores={permPNo=$(s)}] subtitle {"text":">> You're in adventure mode for 30 secs! <<","color":"aqua"}

$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Put ","color":"aqua"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":" in adventure mode for 30 seconds","color":"aqua"}]

execute as @s run function ds:items/after_use