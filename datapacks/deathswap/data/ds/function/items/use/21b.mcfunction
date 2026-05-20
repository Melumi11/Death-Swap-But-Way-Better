$execute as @p[scores={permPNo=$(s)}] run tag @s add motion_sick
$execute as @p[scores={permPNo=$(s)}] run scoreboard players set @s motion_sick 4600

$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Gave ","color":"dark_green"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":" motion sickness for 45 seconds","color":"dark_green"}]
execute as @a at @s run playsound minecraft:entity.spider.ambient

execute as @s run function ds:items/after_use