execute as @s run function ds:items/use/all
give @s minecraft:milk_bucket

tellraw @s [{"text":"You have a milk bucket to clear effects!","color":"white"}]
execute as @s at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 9

execute as @s run function ds:items/after_use