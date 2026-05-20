execute as @s run function ds:items/use/all
tellraw @s {"text":"\n>> Click on which player you want to play Parkour Civilization (the Youtube series):","color":"green","italic":true}
scoreboard players set @s currItem 95
scoreboard players enable @s select
execute as @s run function ds:items/select_template