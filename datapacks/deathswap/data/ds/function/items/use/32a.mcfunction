execute as @s run function ds:items/use/all
tellraw @s {"text":"\n>> Click on which player you want to spawn falling anvils above:","color":"white","italic":true}
scoreboard players set @s currItem 32
scoreboard players enable @s select
execute as @s run function ds:items/select_template