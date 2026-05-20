execute as @s run function ds:items/use/all
give @s minecraft:cooked_beef 32

tellraw @s {"text":"You gave yourself 32 steak","color":"gold"}
execute as @s at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 9

execute as @s run function ds:items/after_use