clear @s white_dye
clear @s light_gray_dye
clear @s gray_dye
clear @s black_dye
clear @s brown_dye
clear @s red_dye
clear @s yellow_dye
clear @s orange_dye
clear @s lime_dye
clear @s green_dye
clear @s cyan_dye
clear @s light_blue_dye
clear @s blue_dye
clear @s purple_dye
clear @s magenta_dye
clear @s pink_dye
kill @e[type=item,nbt={Item:{id:"minecraft:white_dye"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:light_gray_dye"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:gray_dye"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:black_dye"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:brown_dye"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:red_dye"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:yellow_dye"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:orange_dye"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:lime_dye"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:green_dye"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:cyan_dye"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:light_blue_dye"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:blue_dye"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:purple_dye"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:magenta_dye"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:pink_dye"}}]
execute as @s at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 9 2
scoreboard players set @s select 0
##execute as @s run function ds:extra/inventory_glass
tag @s remove has_new_dye