execute as @a[tag=105check] at @s unless entity @e[type=minecraft:warden,distance=..5] run summon warden ~ ~ ~ {Tags:["ent"]}
tag @a remove 105check