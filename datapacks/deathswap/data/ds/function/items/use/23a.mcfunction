execute as @s run function ds:items/use/all
tellraw @s {"text":"\n>> Click on which player you want to leather tunic with curse of binding on (they can't take it off):","color":"gold","italic":true}
scoreboard players set @s currItem 23
scoreboard players enable @s select
execute as @s run function ds:items/select_template