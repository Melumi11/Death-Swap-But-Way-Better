execute as @s run function ds:items/use/all
tellraw @s {"text":"\n>> Click on which player you want to change all of their nearby blocks to stone:","color":"white","italic":true}
scoreboard players set @s currItem 22
scoreboard players enable @s select
execute as @s run function ds:items/select_template