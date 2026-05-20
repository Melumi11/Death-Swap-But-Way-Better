execute as @s run function ds:items/use/all
tellraw @s {"text":"\n>> Click on which player you want to the End dimension:","color":"light_purple","italic":true}
scoreboard players set @s currItem 4
scoreboard players enable @s select
execute as @s run function ds:items/select_template