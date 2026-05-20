execute as @s run function ds:items/use/all
tellraw @s {"text":"\n>> Click on which player you want to spawn 100 villagers on:","color":"gold","italic":true}
scoreboard players set @s currItem 8
scoreboard players enable @s select
execute as @s run function ds:items/select_template