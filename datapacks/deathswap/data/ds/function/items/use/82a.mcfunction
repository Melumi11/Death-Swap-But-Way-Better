execute as @s run function ds:items/use/all
execute as @s at @s run setblock ~ ~ ~1 structure_block[mode=load]{name:"minecraft:amethyst_geode",posX:0,posY:0,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD",showboundingbox:0b} replace
execute as @s at @s run setblock ~ ~1 ~1 minecraft:redstone_block
#execute as @s at @s run fill ~ ~ ~1 ~ ~1 ~1 minecraft:air

tellraw @s {"text":"You placed an Amethyst Geode","color":"light_purple"}
execute as @s at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 9

execute as @s run function ds:items/after_use