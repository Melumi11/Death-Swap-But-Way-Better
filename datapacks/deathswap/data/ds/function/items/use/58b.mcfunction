$tag @p[scores={permPNo=$(s)}] add look_down
$scoreboard players set @p[scores={permPNo=$(s)}] look_down 4500

$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Forcibly made ","color":"green"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":" to look down for 45 seconds","color":"green"}]
execute as @s at @s run playsound minecraft:entity.parrot.imitate.spider
execute as @s at @s run playsound minecraft:entity.spider.hurt master @s ~ ~ ~ 9 0.9

execute as @s run function ds:items/after_use