execute as @s run function ds:items/use/all
execute as @s at @s run place structure minecraft:desert_pyramid

tellraw @s [{"text":"You now have access to a desert temple/pyramid! Good job! (Note: If you don't see it on the surface it may have spawned underground)","color":"yellow"}]
execute as @s at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 9

execute as @s run function ds:items/after_use