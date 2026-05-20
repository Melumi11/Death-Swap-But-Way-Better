execute as @s run function ds:items/use/all
execute if score noNatRegen Core matches 0 run gamerule natural_health_regeneration false
execute if score noNatRegen Core matches 1 run gamerule natural_health_regeneration true

execute if score noNatRegen Core matches 0 if score Lang Core matches 1 run tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Turned /gamerule natural_health_regeneration OFF! You won't regenerate health you lose!","color":"aqua"}]
execute if score noNatRegen Core matches 1 if score Lang Core matches 1 run tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Turned /gamerule natural_health_regeneration BACK ON!","color":"aqua"}]

execute if score noNatRegen Core matches 0 if score Lang Core matches 2 run tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"已关闭游戏规则'保留物品栏'!","color":"aqua"}]
execute if score noNatRegen Core matches 1 if score Lang Core matches 2 run tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"重新开启了游戏规则'保留物品栏'!","color":"aqua"}]

title @a title " "
execute if score noNatRegen Core matches 0 if score Lang Core matches 1 run title @a subtitle "/gamerule natural_regeneration TURNED OFF!"
execute if score noNatRegen Core matches 0 if score Lang Core matches 2 run title @a subtitle "/gamerule 游戏规则'保留物品栏'已关闭!"

scoreboard players add noNatRegen Core 1
execute if score noNatRegen Core matches 2.. run scoreboard players set noNatRegen Core 0

execute as @s run function ds:items/after_use