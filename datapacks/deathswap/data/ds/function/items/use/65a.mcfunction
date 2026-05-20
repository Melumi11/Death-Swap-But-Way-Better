execute as @s run function ds:items/use/all
tellraw @s {"text":"\n>> Click on which player you want to liquidate all blocks around:","color":"aqua","italic":true}
scoreboard players set @s currItem 65
scoreboard players enable @s select
execute as @s run function ds:items/select_template