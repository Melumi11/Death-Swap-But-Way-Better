execute as @s run function ds:items/use/all
tellraw @s {"text":"\n>> Click on which player you want to teleport far away from their current location:","color":"light_purple","italic":true}
scoreboard players set @s currItem 6
scoreboard players enable @s select
execute as @s run function ds:items/select_template