execute if score Lang Core matches 1 run function ds:items/detect_item {a:"execute as @e[type=item,nbt={Item:{id:\"minecraft:",b:"_dye\",components:{\"minecraft:custom_name\":{text:",c:"}}}}] at @s as @p[tag=playing,tag=has_new_dye,distance=..3] at @s run function ds:items/use/"}

execute if score Lang Core matches 2 run function ds:items/ch_detect_item {a:"execute as @e[type=item,nbt={Item:{id:\"minecraft:",b:"_dye\",components:{\"minecraft:custom_name\":{text:",c:"}}}}] at @s as @p[tag=playing,tag=has_new_dye,distance=..3] at @s run function ds:items/use/"}

execute if score Lang Core matches 1 run function ds:items/detect_item {a:"execute as @e[type=item,nbt={Item:{id:\"minecraft:",b:"_dye\",components:{\"minecraft:custom_name\":{text:",c:"}}}}] at @s as @p[tag=playing,tag=has_new_dye,tag=huge_scale,distance=..50] at @s run function ds:items/use/"}

execute if score Lang Core matches 2 run function ds:items/ch_detect_item {a:"execute as @e[type=item,nbt={Item:{id:\"minecraft:",b:"_dye\",components:{\"minecraft:custom_name\":{text:",c:"}}}}] at @s as @p[tag=playing,tag=has_new_dye,tag=huge_scale,distance=..50] at @s run function ds:items/use/"}

# execute as @e[type=item,nbt={Item:{id:"minecraft:COLOR_dye",components:{"minecraft:custom_name":{text:NAME}}}}] at @s as @p[tag=playing] at @s run function ds:items/use/

clear @a[tag=!has_new_dye] white_dye
clear @a[tag=!has_new_dye] light_gray_dye
clear @a[tag=!has_new_dye] gray_dye
clear @a[tag=!has_new_dye] black_dye
clear @a[tag=!has_new_dye] brown_dye
clear @a[tag=!has_new_dye] red_dye
clear @a[tag=!has_new_dye] yellow_dye
clear @a[tag=!has_new_dye] orange_dye
clear @a[tag=!has_new_dye] lime_dye
clear @a[tag=!has_new_dye] green_dye
clear @a[tag=!has_new_dye] cyan_dye
clear @a[tag=!has_new_dye] light_blue_dye
clear @a[tag=!has_new_dye] blue_dye
clear @a[tag=!has_new_dye] purple_dye
clear @a[tag=!has_new_dye] magenta_dye
clear @a[tag=!has_new_dye] pink_dye
execute as @e[type=item,nbt={Item:{id:"minecraft:white_dye"}}] at @s unless entity @p[tag=has_new_dye,distance=..2] unless entity @p[tag=huge_scale,distance=..50] run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:light_gray_dye"}}] at @s unless entity @p[tag=has_new_dye,distance=..2] unless entity @p[tag=huge_scale,distance=..50] run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:gray_dye"}}] at @s unless entity @p[tag=has_new_dye,distance=..2] unless entity @p[tag=huge_scale,distance=..50] run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:black_dye"}}] at @s unless entity @p[tag=has_new_dye,distance=..2] unless entity @p[tag=huge_scale,distance=..50] run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:brown_dye"}}] at @s unless entity @p[tag=has_new_dye,distance=..2] unless entity @p[tag=huge_scale,distance=..50] run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:red_dye"}}] at @s unless entity @p[tag=has_new_dye,distance=..2] unless entity @p[tag=huge_scale,distance=..50] run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:yellow_dye"}}] at @s unless entity @p[tag=has_new_dye,distance=..2] unless entity @p[tag=huge_scale,distance=..50] run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:orange_dye"}}] at @s unless entity @p[tag=has_new_dye,distance=..2] unless entity @p[tag=huge_scale,distance=..50] run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:lime_dye"}}] at @s unless entity @p[tag=has_new_dye,distance=..2] unless entity @p[tag=huge_scale,distance=..50] run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:green_dye"}}] at @s unless entity @p[tag=has_new_dye,distance=..2] unless entity @p[tag=huge_scale,distance=..50] run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:cyan_dye"}}] at @s unless entity @p[tag=has_new_dye,distance=..2] unless entity @p[tag=huge_scale,distance=..50] run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:light_blue_dye"}}] at @s unless entity @p[tag=has_new_dye,distance=..2] unless entity @p[tag=huge_scale,distance=..50] run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:blue_dye"}}] at @s unless entity @p[tag=has_new_dye,distance=..2] unless entity @p[tag=huge_scale,distance=..50] run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:purple_dye"}}] at @s unless entity @p[tag=has_new_dye,distance=..2] unless entity @p[tag=huge_scale,distance=..50] run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:magenta_dye"}}] at @s unless entity @p[tag=has_new_dye,distance=..2] unless entity @p[tag=huge_scale,distance=..50] run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:pink_dye"}}] at @s unless entity @p[tag=has_new_dye,distance=..2] unless entity @p[tag=huge_scale,distance=..50] run kill @s