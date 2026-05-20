execute as @s run function ds:items/use/all
tag @s add 46self
execute as @a[tag=playing,tag=!46self,tag=!Shield] at @s run fill ~ ~ ~ ~ ~13 ~ minecraft:air
execute as @a[tag=playing,tag=!46self,tag=!Shield] at @s run fill ~20 ~12 ~20 ~-20 ~12 ~-20 minecraft:gravel

execute if score Lang Core matches 1 run tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Placed a layer of gravel above everyone except themselves","color":"white"}]
execute if score Lang Core matches 2 run tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"他们除了自己之外, 在所有人的上方都铺了一层碎石","color":"white"}]
execute if entity @p[tag=playing,tag=!46self,tag=Shield] run tellraw @a [{"selector":"@a[tag=playing,tag=Shield,tag=!46self]","italic":true},{"text":" was shielded from items and wasn't affected!","color":"yellow"}]

# for testing:
execute as Jerriess at @s if entity @s[tag=46self] run fill ~ ~ ~ ~ ~13 ~ minecraft:air
execute as Jerriess at @s if entity @s[tag=46self] run fill ~20 ~12 ~20 ~-20 ~12 ~-20 minecraft:gravel

tag @s remove 46self
execute as @s run function ds:items/after_use