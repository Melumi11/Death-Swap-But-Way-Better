$tag @p[scores={permPNo=$(s)}] add nether_world
$scoreboard players set @p[scores={permPNo=$(s)}] nether_world 5200

$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Turned the world around ","color":"red"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":" & everywhere they walk into the Nether for 1 minute","color":"red"}]

execute as @s run function ds:items/after_use