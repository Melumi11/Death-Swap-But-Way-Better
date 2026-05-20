execute as @s run function ds:items/use/all
#execute if score Lang Core matches 1 run title @s title "Look down!"
#execute if score Lang Core matches 2 run title @s title "瞧不起!"
#execute as @s at @s run setblock ~ ~ ~ chest{Items:[{Slot:13b,id:"minecraft:lava_bucket",count:1}]} replace
give @s lava_bucket

tellraw @s [{"text":"You have a lava bucket!","color":"gold"}]
execute as @s at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 9

execute as @s run function ds:items/after_use