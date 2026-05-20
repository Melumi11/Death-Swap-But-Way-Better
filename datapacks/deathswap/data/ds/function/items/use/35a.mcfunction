execute as @s run function ds:items/use/all
tellraw @s {"text":"\n>> Click on which player you want to spawn a layer of lava above:","color":"gold","italic":true}
scoreboard players set @s currItem 35
scoreboard players enable @s select
execute as @s run function ds:items/select_template