execute as @s run function ds:items/use/all
execute as @s at @s run place structure minecraft:village_plains

tellraw @s [{"text":"You now have access to a village! (IMPORTANT: If you are underground, it spawned up on the surface!)","color":"yellow"}]
execute as @s at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 9

execute as @s run function ds:items/after_use