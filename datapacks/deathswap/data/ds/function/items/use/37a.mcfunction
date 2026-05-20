execute as @s run function ds:items/use/all
execute as @s at @s run setblock ~ ~ ~ chest{Items:[{Slot:0b,id:"minecraft:diamond_helmet",count:1},{Slot:1b,id:"minecraft:diamond_chestplate",count:1},{Slot:2b,id:"minecraft:diamond_leggings",count:1},{Slot:3b,id:"minecraft:diamond_boots",count:1},{Slot:4b,id:"minecraft:diamond_sword",count:1},{Slot:5b,id:"minecraft:diamond_pickaxe",count:1},{Slot:6b,id:"minecraft:diamond_axe",count:1},{Slot:7b,id:"minecraft:diamond_shovel",count:1},{Slot:8b,id:"minecraft:diamond_hoe",count:1},{Slot:9b,id:"minecraft:diamond_spear",count:1},{Slot:10b,id:"minecraft:diamond",count:1}]} replace

execute if score Lang Core matches 1 run title @s title "Look down!"
execute if score Lang Core matches 2 run title @s title "瞧不起!"

tellraw @s [{"text":">> You got full diamond armor, weapons, & tools in the chest below you! <<","color":"aqua"}]
execute as @s at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 9

execute as @s run function ds:items/after_use