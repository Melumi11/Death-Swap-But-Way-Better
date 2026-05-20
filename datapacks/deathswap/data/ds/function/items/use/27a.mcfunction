execute as @s run function ds:items/use/all
give @s ravager_spawn_egg 1

tellraw @s [{"text":"Use this ravager spawn egg wisely... ","color":"yellow"}]
execute as @s at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 9

execute as @s run function ds:items/after_use