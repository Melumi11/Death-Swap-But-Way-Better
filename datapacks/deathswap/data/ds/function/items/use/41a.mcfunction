execute as @s run function ds:items/use/all
tellraw @s {"text":"\n>> Click on which player you want to pumpkin head on (will stay on for 1 min):","color":"yellow","italic":true}
scoreboard players set @s currItem 41
scoreboard players enable @s select
execute as @s run function ds:items/select_template