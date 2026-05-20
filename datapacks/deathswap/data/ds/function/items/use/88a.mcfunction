execute as @s run function ds:items/use/all
tellraw @s {"text":"\n>> Click on which player you want to switch places with (you'll teleport to each other):","color":"yellow","italic":true}
scoreboard players set @s currItem 88
scoreboard players enable @s select
execute as @s run function ds:items/select_template