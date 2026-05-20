execute as @s run function ds:items/use/all
tellraw @s {"text":"\n>> Click on which player you want to make their ears bleed (GIVE THEM A WARNING PLEASE!!!) for 45 seconds:","color":"red","italic":true}
scoreboard players set @s currItem 92
scoreboard players enable @s select
execute as @s run function ds:items/select_template