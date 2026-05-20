execute as @s run function ds:items/use/all
tellraw @s {"text":"\n>> Click on which player you want to place a 7x7x7 cube of air on (all these blocks will turn to air):","color":"white","italic":true}
scoreboard players set @s currItem 15
scoreboard players enable @s select
execute as @s run function ds:items/select_template