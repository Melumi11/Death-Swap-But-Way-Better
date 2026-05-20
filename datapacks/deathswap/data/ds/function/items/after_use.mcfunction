scoreboard players set @s select 0
execute as @s run trigger select set 0
scoreboard players set @s currItem 0
tag @s[tag=!has_new_dye] remove choosing_item
tag @s remove choosing_player
##execute as @s run function ds:extra/inventory_glass