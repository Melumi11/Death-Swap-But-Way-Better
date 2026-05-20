execute as @s run function ds:items/use/all
tellraw @s {"text":"\n>> Click on which player you want to trap inside a prison:","color":"red","italic":true}
scoreboard players set @s currItem 61
scoreboard players enable @s select
execute as @s run function ds:items/select_template