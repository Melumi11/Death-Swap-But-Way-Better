execute as @s run function ds:items/use/all
tellraw @s {"text":"\n>> Click on which player you want to block from using any items for 3 minutes:","color":"aqua","italic":true}
scoreboard players set @s currItem 56
scoreboard players enable @s select
execute as @s run function ds:items/select_template