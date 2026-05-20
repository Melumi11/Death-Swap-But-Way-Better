execute as @s run function ds:items/use/all
tellraw @s {"text":"\n>> Click on which player you want to take away 2 hearts from (will leave them w/ 8 hearts):","color":"red","italic":true}
scoreboard players set @s currItem 69
scoreboard players enable @s select
execute as @s run function ds:items/select_template