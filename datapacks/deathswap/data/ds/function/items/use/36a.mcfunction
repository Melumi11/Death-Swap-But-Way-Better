execute as @s run function ds:items/use/all
tellraw @s {"text":"\n>> Click on which player you want to spawn a horde of bees around:","color":"yellow","italic":true}
scoreboard players set @s currItem 36
scoreboard players enable @s select
execute as @s run function ds:items/select_template