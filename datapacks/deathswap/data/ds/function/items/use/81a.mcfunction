execute as @s run function ds:items/use/all
tag @s add 81self
spreadplayers 0 0 10000 29999000 false @a[tag=playing,tag=!81self]
tag @s remove 81self

execute if score Lang Core matches 1 run tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Re-shuffled everybody around the world except themself!","color":"aqua"}]
execute if score Lang Core matches 2 run tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"对世界各地的所有人都进行了人员调整, 唯独没有调整他们自己!","color":"aqua"}]
execute as @a at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 99

execute as @s run function ds:items/after_use