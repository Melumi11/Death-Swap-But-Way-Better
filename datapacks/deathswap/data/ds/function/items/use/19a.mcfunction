execute as @s run function ds:items/use/all
give @s minecraft:tnt 4

tellraw @s {"text":"+4 TNT!","color":"red"}
execute as @s at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 9

execute as @s run function ds:items/after_use