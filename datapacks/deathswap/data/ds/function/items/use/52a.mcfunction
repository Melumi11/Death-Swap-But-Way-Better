execute as @s run function ds:items/use/all
give @s minecraft:ender_pearl 3

tellraw @s [{"text":"You got 3 ender pearls!","color":"blue"}]
execute as @s at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 9

execute as @s run function ds:items/after_use