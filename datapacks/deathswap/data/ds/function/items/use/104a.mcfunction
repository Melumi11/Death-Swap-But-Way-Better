execute as @s run function ds:items/use/all
execute if score Lang Core matches 1 run title @s title "Look down!"
execute if score Lang Core matches 2 run title @s title "瞧不起!"
execute as @s at @s run setblock ~ ~ ~ chest{Items:[{Slot:12b,id:"minecraft:enchanting_table",count:1},{Slot:13b,id:"minecraft:lapis_lazuli",count:32},{Slot:14b,id:"minecraft:experience_bottle",count:32}]} replace

tellraw @s {"text":"You have an enchanting table, lapis lazuli, & XP bottles!","color":"light_purple"}
execute as @s at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 9

execute as @s run function ds:items/after_use