execute as @s run function ds:items/use/all
tellraw @s {"text":"\n>> Click on which player you want to fill their inventory with useless junk:","color":"yellow","italic":true}
scoreboard players set @s currItem 49
scoreboard players enable @s select
execute as @s run function ds:items/select_template