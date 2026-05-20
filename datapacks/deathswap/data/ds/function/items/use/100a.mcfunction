execute as @s run function ds:items/use/all
tellraw @s {"text":"\n>> Click on which player you want to summon a Giant zombie on:","color":"green","italic":true}
scoreboard players set @s currItem 100
scoreboard players enable @s select
execute as @s run function ds:items/select_template