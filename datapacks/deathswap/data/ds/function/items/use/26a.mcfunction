execute as @s run function ds:items/use/all
tellraw @s {"text":"\n>> Click on which player you want to give blindness & darkness for 40 seconds:","color":"white","italic":true}
scoreboard players set @s currItem 26
scoreboard players enable @s select
execute as @s run function ds:items/select_template