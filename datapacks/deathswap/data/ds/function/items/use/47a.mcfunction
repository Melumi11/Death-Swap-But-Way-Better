execute as @s run function ds:items/use/all
execute unless score timeCycle Core matches ..100 run scoreboard players remove timeCycle Core 50
execute if score TimeS Core matches 36.. if score TimeM Core matches 0 run scoreboard players remove TimeS Core 30
execute if score TimeM Core matches 1.. run scoreboard players remove TimeS Core 30
execute if score TimeS Core matches ..-1 run scoreboard players remove TimeM Core 1
execute if score TimeS Core matches ..-1 run scoreboard players add TimeS Core 60

tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Reduced the time in between swaps by 30 seconds","color":"red"}]
title @a title " "
title @a subtitle {"text":"Swap cycle: 30 seconds SHORTER!","color":"red"}
execute as @a at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 9 0.7

execute as @s run function ds:items/after_use