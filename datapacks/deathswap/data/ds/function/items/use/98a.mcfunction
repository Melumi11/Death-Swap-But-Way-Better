execute as @s run function ds:items/use/all
tellraw @s {"text":"\n>> Click on which player you want to block from using crafting tables AND furnaces for 90 secs:","color":"yellow","italic":true}
scoreboard players set @s currItem 98
scoreboard players enable @s select
execute as @s run function ds:items/select_template