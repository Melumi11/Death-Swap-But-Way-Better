execute as @s run function ds:items/use/all
tellraw @s {"text":"\n>> Click on which player you want to drown with water (all air blocks turn to water):","color":"aqua","italic":true}
scoreboard players set @s currItem 42
scoreboard players enable @s select
execute as @s run function ds:items/select_template