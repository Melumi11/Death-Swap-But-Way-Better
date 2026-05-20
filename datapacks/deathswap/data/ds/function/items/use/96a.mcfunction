execute as @s run function ds:items/use/all
tellraw @s {"text":"\n>> Click on which player you want to secretly spy on:","color":"green","italic":true}
scoreboard players set @s currItem 96
scoreboard players enable @s select
execute as @s run function ds:items/select_template