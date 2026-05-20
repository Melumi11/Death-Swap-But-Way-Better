$execute as @p[scores={permPNo=$(s)}] run attribute @s minecraft:scale base set 0.0625
$tag @p[scores={permPNo=$(s)}] add tiny_scale
$scoreboard players set @p[scores={permPNo=$(s)}] tiny_scale 8000

$execute as @p[scores={permPNo=$(s)}] at @s run playsound minecraft:entity.spider.hurt master @s ~ ~ ~ 9 1.25
$title @p[scores={permPNo=$(s)}] title " "
$title @p[scores={permPNo=$(s)}] subtitle {"text":">> You are very smol! <<","color":"red"}

$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Made ","color":"red"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":" extremely tiny for 80 seconds","color":"red"}]

execute as @s run function ds:items/after_use