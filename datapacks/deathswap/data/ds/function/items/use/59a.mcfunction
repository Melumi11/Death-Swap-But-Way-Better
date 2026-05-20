execute as @s run function ds:items/use/all
tellraw @s {"text":"\n>> Click on which player you want to bombard with a bunch of ghasts:","color":"white","italic":true}
scoreboard players set @s currItem 59
scoreboard players enable @s select
execute as @s run function ds:items/select_template