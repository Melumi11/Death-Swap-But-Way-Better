execute as @s run function ds:items/use/all
#execute if score Lang Core matches 1 run title @s title "Look down!"
#execute if score Lang Core matches 2 run title @s title "瞧不起!"
#execute as @s at @s run setblock ~ ~ ~ chest{Items:[{Slot:13b,id:"minecraft:water_bucket",count:1}]} replace
give @s water_bucket

tellraw @s [{"text":"You have a water bucket!","color":"aqua"}]
execute as @s at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 9

execute as @s run function ds:items/after_use