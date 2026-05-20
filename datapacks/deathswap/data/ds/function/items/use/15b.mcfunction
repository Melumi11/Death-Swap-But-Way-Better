$execute as @p[scores={permPNo=$(s)}] at @s run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 minecraft:air destroy

$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Placed a 7x7x7 cube of air on ","color":"white"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":", deleting all blocks","color":"white"}]
$execute as @p[scores={permPNo=$(s)}] at @s run playsound minecraft:block.stone.break master @s ~ ~ ~ 99 0
$execute as @p[scores={permPNo=$(s)}] at @s run playsound minecraft:block.stone.break master @s ~ ~ ~ 99 0
$execute as @p[scores={permPNo=$(s)}] at @s run playsound minecraft:block.stone.break master @s ~ ~ ~ 99 0
execute as @s at @s run playsound minecraft:block.stone.break master @s ~ ~ ~ 99 0
execute as @s at @s run playsound minecraft:block.stone.break master @s ~ ~ ~ 99 0

execute as @s run function ds:items/after_use