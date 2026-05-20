execute as @s run function ds:items/use/all
tellraw @s {"text":"\n>> Click on which player you want to block out the sun for (the sky will fill with bedrock):","color":"white","italic":true}
scoreboard players set @s currItem 48
scoreboard players enable @s select
execute as @s run function ds:items/select_template