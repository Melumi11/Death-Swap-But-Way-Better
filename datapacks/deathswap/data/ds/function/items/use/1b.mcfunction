$effect give @p[scores={permPNo=$(s)}] minecraft:speed 42 0 false
$execute as @p[scores={permPNo=$(s)}] run attribute @s minecraft:movement_speed base set 5.5
$scoreboard players set @p[scores={permPNo=$(s)}] mega_speed 4100
$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Gave ","color":"aqua"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":" extremely fast, un-navigable speed for 40 seconds","color":"aqua"}]
execute as @a at @s run playsound minecraft:entity.enderman.scream master @s ~ ~ ~ 999
execute as @s run function ds:items/after_use