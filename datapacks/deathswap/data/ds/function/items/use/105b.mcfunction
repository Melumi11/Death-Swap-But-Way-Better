$execute as @p[scores={permPNo=$(s)}] at @s run summon warden ~ ~ ~ {Tags:["ent"],Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:1200L}}}}
$execute as @p[scores={permPNo=$(s)}] at @s run tag @e[type=minecraft:warden,distance=..5] add ent

$title @p[scores={permPNo=$(s)}] title " "
$title @p[scores={permPNo=$(s)}] subtitle {"text":">> warden.. <<","color":"dark_aqua","italic":true}

# NO USE
#$tag @p[scores={permPNo=$(s)}] add 105check
#schedule function ds:items/misc/105check1 2t
#schedule function ds:items/misc/105check2 4t
#schedule function ds:items/misc/105check3 6t

$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Summoned the Warden on ","color":"light_purple"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":" ","color":"light_purple"}]
execute as @s at @s run playsound minecraft:entity.warden.agitated master @s ~ ~ ~ 9
$execute as @p[scores={permPNo=$(s)}] at @s run playsound minecraft:entity.warden.agitated master @s ~ ~ ~ 9

execute as @s run function ds:items/after_use