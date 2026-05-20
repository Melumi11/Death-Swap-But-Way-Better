clear @s *[custom_data={deathswapitem:true}]
clear @s minecraft:command_block
tag @s add got_items
tag @s add choosing_item
tag @s add has_new_dye

title @s title " "
execute if score Lang Core matches 1 run title @s subtitle {"text":">> New items! <<","color":"green"}
execute if score Lang Core matches 2 run title @s subtitle {"text":">> 你获得了新物品! <<","color":"green"}
execute if score Lang Core matches 1 run tellraw @s [{"text":"<< You got a new set of items! They will expire in 45 seconds if you don't use one of them! You can only use one! >>","color":"green","bold":true}]
execute if score Lang Core matches 2 run tellraw @s [{"text":"<< 你获得了一套新的物品! 如果您不使用其中任何一个，它们将在 45 秒后失效! >>","color":"green","bold":true}]
execute as @s at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 9
execute as @s[tag=choosing_item,tag=!choosing_player] run trigger select set 0
scoreboard players set @s[tag=choosing_item,tag=!choosing_player] currItem 0

function ds:items/random_item {i:1}
function ds:items/re-random_item {i:1}
function ds:items/re-random_item {i:1}
function ds:items/re-random_item {i:1}
function ds:items/re-random_item {i:1}
function ds:items/re-random_item {i:1}
function ds:items/re-random_item {i:1}
function ds:items/re-random_item {i:1}
function ds:items/re-random_item {i:1}
function ds:items/re-random_item {i:1}
function ds:items/re-random_item {i:1}
function ds:items/re-random_item {i:1}
function ds:items/re-random_item {i:1}
function ds:items/re-random_item {i:1}
function ds:items/re-random_item {i:1}
function ds:items/re-random_item {i:1}
function ds:items/re-random_item {i:1}
function ds:items/re-random_item {i:1}
function ds:items/re-random_item {i:1}
function ds:items/re-random_item {i:1}
function ds:items/re-random_item {i:1}
function ds:items/re-random_item {i:1}
function ds:items/re-random_item {i:1}
function ds:items/re-random_item {i:1}
function ds:items/re-random_item {i:1}
function ds:items/re-random_item {i:1}
function ds:items/re-random_item {i:1}
function ds:items/re-random_item {i:1}
function ds:items/re-random_item {i:1}
function ds:items/re-random_item {i:1}
function ds:items/re-random_item {i:1}
function ds:items/re-random_item {i:1}
function ds:items/re-random_item {i:1}
function ds:items/re-random_item {i:1}
function ds:items/re-random_item {i:1}
function ds:items/re-random_item {i:1}
function ds:items/re-random_item {i:1}
function ds:items/re-random_item {i:1}
function ds:items/re-random_item {i:1}
function ds:items/re-random_item {i:1}
function ds:items/re-random_item {i:1}
function ds:items/re-random_item {i:1}
function ds:items/re-random_item {i:1}
function ds:items/re-random_item {i:1}
function ds:items/re-random_item {i:1}
function ds:items/re-random_item {i:1}
execute as @s run function ds:items/items/all {i:1,slot:6}
function ds:items/move_prev_down {i:1}

function ds:items/random_item {i:2}
function ds:items/re-random_item {i:2}
function ds:items/re-random_item {i:2}
function ds:items/re-random_item {i:2}
function ds:items/re-random_item {i:2}
function ds:items/re-random_item {i:2}
function ds:items/re-random_item {i:2}
function ds:items/re-random_item {i:2}
function ds:items/re-random_item {i:2}
function ds:items/re-random_item {i:2}
function ds:items/re-random_item {i:2}
function ds:items/re-random_item {i:2}
function ds:items/re-random_item {i:2}
function ds:items/re-random_item {i:2}
function ds:items/re-random_item {i:2}
function ds:items/re-random_item {i:2}
function ds:items/re-random_item {i:2}
function ds:items/re-random_item {i:2}
function ds:items/re-random_item {i:2}
function ds:items/re-random_item {i:2}
function ds:items/re-random_item {i:2}
function ds:items/re-random_item {i:2}
function ds:items/re-random_item {i:2}
function ds:items/re-random_item {i:2}
function ds:items/re-random_item {i:2}
function ds:items/re-random_item {i:2}
function ds:items/re-random_item {i:2}
function ds:items/re-random_item {i:2}
function ds:items/re-random_item {i:2}
function ds:items/re-random_item {i:2}
function ds:items/re-random_item {i:2}
function ds:items/re-random_item {i:2}
function ds:items/re-random_item {i:2}
function ds:items/re-random_item {i:2}
function ds:items/re-random_item {i:2}
function ds:items/re-random_item {i:2}
function ds:items/re-random_item {i:2}
function ds:items/re-random_item {i:2}
function ds:items/re-random_item {i:2}
function ds:items/re-random_item {i:2}
function ds:items/re-random_item {i:2}
function ds:items/re-random_item {i:2}
function ds:items/re-random_item {i:2}
function ds:items/re-random_item {i:2}
function ds:items/re-random_item {i:2}
function ds:items/re-random_item {i:2}
execute as @s run function ds:items/items/all {i:2,slot:7}
function ds:items/move_prev_down {i:2}

function ds:items/random_item {i:3}
function ds:items/re-random_item {i:3}
function ds:items/re-random_item {i:3}
function ds:items/re-random_item {i:3}
function ds:items/re-random_item {i:3}
function ds:items/re-random_item {i:3}
function ds:items/re-random_item {i:3}
function ds:items/re-random_item {i:3}
function ds:items/re-random_item {i:3}
function ds:items/re-random_item {i:3}
function ds:items/re-random_item {i:3}
function ds:items/re-random_item {i:3}
function ds:items/re-random_item {i:3}
function ds:items/re-random_item {i:3}
function ds:items/re-random_item {i:3}
function ds:items/re-random_item {i:3}
function ds:items/re-random_item {i:3}
function ds:items/re-random_item {i:3}
function ds:items/re-random_item {i:3}
function ds:items/re-random_item {i:3}
function ds:items/re-random_item {i:3}
function ds:items/re-random_item {i:3}
function ds:items/re-random_item {i:3}
function ds:items/re-random_item {i:3}
function ds:items/re-random_item {i:3}
function ds:items/re-random_item {i:3}
function ds:items/re-random_item {i:3}
function ds:items/re-random_item {i:3}
function ds:items/re-random_item {i:3}
function ds:items/re-random_item {i:3}
function ds:items/re-random_item {i:3}
function ds:items/re-random_item {i:3}
function ds:items/re-random_item {i:3}
function ds:items/re-random_item {i:3}
function ds:items/re-random_item {i:3}
function ds:items/re-random_item {i:3}
function ds:items/re-random_item {i:3}
function ds:items/re-random_item {i:3}
function ds:items/re-random_item {i:3}
function ds:items/re-random_item {i:3}
function ds:items/re-random_item {i:3}
function ds:items/re-random_item {i:3}
function ds:items/re-random_item {i:3}
function ds:items/re-random_item {i:3}
function ds:items/re-random_item {i:3}
function ds:items/re-random_item {i:3}
execute as @s run function ds:items/items/all {i:3,slot:8}
function ds:items/move_prev_down {i:3}

execute unless entity @p[tag=playing,tag=!got_items] run tag @a remove got_items