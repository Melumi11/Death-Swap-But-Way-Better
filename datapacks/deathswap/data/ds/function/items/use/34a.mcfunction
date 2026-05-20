execute as @s run function ds:items/use/all
tellraw @s {"text":"\n>> Click on which player you want to place a bunch of bells around:","color":"yellow","italic":true}
scoreboard players set @s currItem 34
scoreboard players enable @s select
execute as @s run function ds:items/select_template