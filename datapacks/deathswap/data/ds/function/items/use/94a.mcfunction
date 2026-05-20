execute as @s run function ds:items/use/all
give @s flint_and_steel

tellraw @s {"text":"You have flint & steel!","color":"gold"}
execute as @s at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 9

execute as @s run function ds:items/after_use