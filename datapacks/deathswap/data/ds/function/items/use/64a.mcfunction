execute as @s run function ds:items/use/all
#execute if score Lang Core matches 1 run title @s title "Look down!"
#execute if score Lang Core matches 2 run title @s title "瞧不起!"
#execute as @s at @s run setblock ~ ~ ~ chest{Items:[{Slot:13b,id:"minecraft:potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:long_fire_resistance"}}}]} replace
give @s potion[potion_contents={potion:"minecraft:long_fire_resistance"}] 1

tellraw @s [{"text":">> You have a long fire resistance potion!","color":"gold"}]
execute as @s at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 9

execute as @s run function ds:items/after_use