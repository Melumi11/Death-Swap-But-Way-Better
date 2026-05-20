execute as @s run function ds:items/use/all
effect clear @a minecraft:night_vision

##execute as @s[tag=!4extra_hearts,tag=!minus2_hearts] run attribute @s minecraft:max_health base set 28.0
##execute as @s[tag=!4extra_hearts,tag=minus2_hearts] run attribute @s minecraft:max_health base set 24.0
##execute as @s[tag=4extra_hearts,tag=!minus2_hearts] run attribute @s minecraft:max_health base set 36.0
##execute as @s[tag=4extra_hearts,tag=minus2_hearts] run attribute @s minecraft:max_health base set 32.0

scoreboard players add @s Hearts 8

execute if entity @s[scores={permPNo=1}] store result storage ds:hearts p.1 int 1 run scoreboard players get @s Hearts
execute if entity @s[scores={permPNo=2}] store result storage ds:hearts p.2 int 1 run scoreboard players get @s Hearts
execute if entity @s[scores={permPNo=3}] store result storage ds:hearts p.3 int 1 run scoreboard players get @s Hearts
execute if entity @s[scores={permPNo=4}] store result storage ds:hearts p.4 int 1 run scoreboard players get @s Hearts
execute if entity @s[scores={permPNo=5}] store result storage ds:hearts p.5 int 1 run scoreboard players get @s Hearts
execute if entity @s[scores={permPNo=6}] store result storage ds:hearts p.6 int 1 run scoreboard players get @s Hearts
execute if entity @s[scores={permPNo=7}] store result storage ds:hearts p.7 int 1 run scoreboard players get @s Hearts
execute if entity @s[scores={permPNo=8}] store result storage ds:hearts p.8 int 1 run scoreboard players get @s Hearts
execute if entity @s[scores={permPNo=9}] store result storage ds:hearts p.9 int 1 run scoreboard players get @s Hearts
execute if entity @s[scores={permPNo=10}] store result storage ds:hearts p.10 int 1 run scoreboard players get @s Hearts
execute if entity @s[scores={permPNo=11}] store result storage ds:hearts p.11 int 1 run scoreboard players get @s Hearts
execute if entity @s[scores={permPNo=12}] store result storage ds:hearts p.12 int 1 run scoreboard players get @s Hearts

execute as @s run function ds:extra/modify_hearts with storage ds:hearts p

tag @s[tag=4extra_hearts] add has8_hearts
tag @s add 4extra_hearts

tellraw @s [{"text":"+4 Hearts!","color":"red"}]
execute as @s at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 9

execute as @s run function ds:items/after_use