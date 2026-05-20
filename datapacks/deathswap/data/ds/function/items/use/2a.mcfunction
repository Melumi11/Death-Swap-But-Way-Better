execute as @s run function ds:items/use/all
#title @s title "Look down!"
#execute as @s at @s run setblock ~ ~ ~ chest{Items:[{Slot:0b,id:"minecraft:soul_sand",count:4},{Slot:1b,id:"minecraft:wither_skeleton_skull",count:3}]} replace
give @s minecraft:soul_sand 4
give @s minecraft:wither_skeleton_skull 3

tellraw @s [{"text":"*** Start building the wither now, but finish it 10 seconds before the swap!","color":"yellow","italic":true}]
execute as @s at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 9

execute as @s run function ds:items/after_use