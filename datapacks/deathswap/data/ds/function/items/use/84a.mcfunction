execute as @s run function ds:items/use/all
tellraw @s {"text":"\n>> Click on which player you want to build a Quartz maze around:","color":"white","italic":true}
scoreboard players set @s currItem 84
scoreboard players enable @s select
execute as @s run function ds:items/select_template