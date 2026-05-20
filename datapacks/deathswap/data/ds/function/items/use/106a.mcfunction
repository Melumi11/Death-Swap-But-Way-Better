execute as @s run function ds:items/use/all
tellraw @s {"text":"\n>> Click on which player you want to teleport directly to the Nether:","color":"red","italic":true}
scoreboard players set @s currItem 106
scoreboard players enable @s select
execute as @s run function ds:items/select_template