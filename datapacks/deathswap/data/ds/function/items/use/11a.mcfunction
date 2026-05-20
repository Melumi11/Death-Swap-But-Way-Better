execute as @s run function ds:items/use/all
tellraw @s {"text":"\n>> Click on which player you want to disable their jump for 60 seconds:","color":"green","italic":true}
scoreboard players set @s currItem 11
scoreboard players enable @s select
execute as @s run function ds:items/select_template