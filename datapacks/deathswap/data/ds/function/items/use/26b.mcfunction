$effect give @p[scores={permPNo=$(s)}] minecraft:darkness 41 5
$effect give @p[scores={permPNo=$(s)}] minecraft:blindness 41 5

$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Gave ","color":"white"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":" blindness & darkness for 40 seconds","color":"white"}]
$execute as @p[scores={permPNo=$(s)}] at @s run playsound minecraft:entity.enderman.scream master @s ~ ~ ~ 9

execute as @s run function ds:items/after_use