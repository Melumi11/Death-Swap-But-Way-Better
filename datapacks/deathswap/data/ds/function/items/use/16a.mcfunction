execute as @s run function ds:items/use/all
tellraw @s {"text":"\n>> Click on which player you want to teleport to y= -60 (a platform will spawn under them):","color":"yellow","italic":true}
scoreboard players set @s currItem 16
scoreboard players enable @s select
execute as @s run function ds:items/select_template