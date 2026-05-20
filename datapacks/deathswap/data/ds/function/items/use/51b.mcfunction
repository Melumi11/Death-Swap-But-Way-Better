$execute as @p[scores={permPNo=$(s)}] at @s run fill ~2 ~3 ~2 ~-2 ~ ~-2 minecraft:cobweb replace air

$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Placed a bunch of cobwebs at ","color":"white"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":"'s location","color":"white"}]
execute as @s at @s run playsound minecraft:entity.parrot.imitate.spider
execute as @s at @s run playsound minecraft:entity.spider.hurt master @s ~ ~ ~ 9 0.9
$execute as @p[scores={permPNo=$(s)}] at @s run playsound minecraft:entity.parrot.imitate.spider
$execute as @p[scores={permPNo=$(s)}] at @s run playsound minecraft:entity.spider.hurt master @s ~ ~ ~ 9 0.9

execute as @s run function ds:items/after_use