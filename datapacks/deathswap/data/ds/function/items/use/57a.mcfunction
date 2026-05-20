execute as @s run function ds:items/use/all
give @s enchanted_golden_apple 1
tag @s add got_notch_apple

tellraw @s [{"text":">> You have an enchanted golden apple! Use it wisely! <<","color":"yellow"}]
execute as @s at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 9

execute as @s run function ds:items/after_use