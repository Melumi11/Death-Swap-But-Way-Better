execute as @s run function ds:items/use/all
tellraw @s {"text":"\n>> Click on which player you want to put into spectator mode for 20 seconds:","color":"green","italic":true}
scoreboard players set @s currItem 80
scoreboard players enable @s select
execute as @s run function ds:items/select_template