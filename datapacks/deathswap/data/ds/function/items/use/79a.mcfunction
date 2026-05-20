execute as @s run function ds:items/use/all
execute if score noKeepInv Core matches 0 run gamerule keep_inventory false
execute if score noKeepInv Core matches 1 run gamerule keep_inventory true

execute if score noKeepInv Core matches 0 if score Lang Core matches 1 run tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Turned /gamerule keep_inventory OFF! You will lose your items if you die!","color":"aqua"}]
execute if score noKeepInv Core matches 1 if score Lang Core matches 1 run tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Turned /gamerule keep_inventory BACK ON!","color":"aqua"}]

execute if score noKeepInv Core matches 0 if score Lang Core matches 2 run tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"已关闭游戏规则'保留物品栏'!","color":"aqua"}]
execute if score noKeepInv Core matches 1 if score Lang Core matches 2 run tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"重新开启了游戏规则'保留物品栏'!","color":"aqua"}]

title @a title " "
execute if score noKeepInv Core matches 0 if score Lang Core matches 1 run title @a subtitle "/gamerule keep_inventory TURNED OFF!"
execute if score noKeepInv Core matches 0 if score Lang Core matches 2 run title @a subtitle "/gamerule 游戏规则'保留物品栏'已关闭!"

scoreboard players add noKeepInv Core 1
execute if score noKeepInv Core matches 2.. run scoreboard players set noKeepInv Core 0

execute as @s run function ds:items/after_use