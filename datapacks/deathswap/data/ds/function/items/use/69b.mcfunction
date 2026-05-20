##$execute as @p[scores={permPNo=$(s)},tag=!minus2_hearts,tag=!4extra_hearts] run attribute @s minecraft:max_health base set 16.0
##$execute as @p[scores={permPNo=$(s)},tag=minus2_hearts,tag=!4extra_hearts] run attribute @s minecraft:max_health base set 12.0
##$execute as @p[scores={permPNo=$(s)},tag=!minus2_hearts,tag=4extra_hearts] run attribute @s minecraft:max_health base set 24.0
##$execute as @p[scores={permPNo=$(s)},tag=minus2_hearts,tag=4extra_hearts] run attribute @s minecraft:max_health base set 20.0

$scoreboard players remove @p[scores={permPNo=$(s)}] Hearts 4

$execute as @p[scores={permPNo=$(s)}] if entity @s[scores={permPNo=1}] store result storage ds:hearts p.1 int 1 run scoreboard players get @s Hearts
$execute as @p[scores={permPNo=$(s)}] if entity @s[scores={permPNo=2}] store result storage ds:hearts p.2 int 1 run scoreboard players get @s Hearts
$execute as @p[scores={permPNo=$(s)}] if entity @s[scores={permPNo=3}] store result storage ds:hearts p.3 int 1 run scoreboard players get @s Hearts
$execute as @p[scores={permPNo=$(s)}] if entity @s[scores={permPNo=4}] store result storage ds:hearts p.4 int 1 run scoreboard players get @s Hearts
$execute as @p[scores={permPNo=$(s)}] if entity @s[scores={permPNo=5}] store result storage ds:hearts p.5 int 1 run scoreboard players get @s Hearts
$execute as @p[scores={permPNo=$(s)}] if entity @s[scores={permPNo=6}] store result storage ds:hearts p.6 int 1 run scoreboard players get @s Hearts
$execute as @p[scores={permPNo=$(s)}] if entity @s[scores={permPNo=7}] store result storage ds:hearts p.7 int 1 run scoreboard players get @s Hearts
$execute as @p[scores={permPNo=$(s)}] if entity @s[scores={permPNo=8}] store result storage ds:hearts p.8 int 1 run scoreboard players get @s Hearts
$execute as @p[scores={permPNo=$(s)}] if entity @s[scores={permPNo=9}] store result storage ds:hearts p.9 int 1 run scoreboard players get @s Hearts
$execute as @p[scores={permPNo=$(s)}] if entity @s[scores={permPNo=10}] store result storage ds:hearts p.10 int 1 run scoreboard players get @s Hearts
$execute as @p[scores={permPNo=$(s)}] if entity @s[scores={permPNo=11}] store result storage ds:hearts p.11 int 1 run scoreboard players get @s Hearts
$execute as @p[scores={permPNo=$(s)}] if entity @s[scores={permPNo=12}] store result storage ds:hearts p.12 int 1 run scoreboard players get @s Hearts

$execute as @p[scores={permPNo=$(s)}] run function ds:extra/modify_hearts with storage ds:hearts p

$tag @p[scores={permPNo=$(s)}] add minus2_hearts
$tag @p[scores={permPNo=$(s)},tag=!has8_hearts] remove 4extra_hearts
$tag @p[scores={permPNo=$(s)}] remove has8_hearts

$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Removed 2 hearts from ","color":"red"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":", leaving them w/ only 8","color":"red"}]
execute as @a at @s run playsound minecraft:entity.ghast.scream master @s ~ ~ ~ 9

execute as @s run function ds:items/after_use