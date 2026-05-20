execute as @s run function ds:items/use/all
tag @s add 55self
execute as @a[tag=playing,tag=!55self,tag=!Shield] at @s run tag @s add 55earthquake
execute if score 55TimeS Items matches 1.. run scoreboard players add 55TimeS Items 54
execute if score 55TimeS Items matches 0 run scoreboard players set 55TimeS Items 54
scoreboard players set 55TimeT Items 1

tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Summoned a California-level earthquake on the entire world","color":"white"}]
execute if score Lang Core matches 1 if entity @p[tag=playing,tag=!55self,tag=Shield] run tellraw @a [{"selector":"@a[tag=playing,tag=Shield,tag=!55self]","italic":true},{"text":" was shielded from the items and wasn't affected!","color":"yellow"}]
execute if score Lang Core matches 2 if entity @p[tag=playing,tag=!55self,tag=Shield] run tellraw @a [{"selector":"@a[tag=playing,tag=Shield,tag=!55self]","italic":true},{"text":" 免受这些内容的影响，因此没有受到任何损失!","color":"yellow"}]

# for testing:
execute as Jerriess at @s if entity @s[tag=55self] run tag @s add 55earthquake

tag @s remove 55self
execute as @s run function ds:items/after_use