execute as @s run function ds:items/use/all
tellraw @s {"text":"\n>> Click on which player you want to set everything around them on fire:","color":"yellow","italic":true}
scoreboard players set @s currItem 109
scoreboard players enable @s select
execute as @s run function ds:items/select_template