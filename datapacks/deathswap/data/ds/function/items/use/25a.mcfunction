execute as @s run function ds:items/use/all
tellraw @s {"text":"\n>> Click on which player you want to leave behind a bedrock trail (the blocks below them turn to bedrock):","color":"white","italic":true}
scoreboard players set @s currItem 25
scoreboard players enable @s select
execute as @s run function ds:items/select_template