execute as @s run function ds:items/use/all
tellraw @s {"text":"\n>> Click on which player you want to make continuously pee for a minute:","color":"yellow","italic":true}
scoreboard players set @s currItem 103
scoreboard players enable @s select
execute as @s run function ds:items/select_template