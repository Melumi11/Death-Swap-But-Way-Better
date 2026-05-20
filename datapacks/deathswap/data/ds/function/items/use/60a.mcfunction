execute as @s run function ds:items/use/all
tellraw @s {"text":"\n>> Click on which player you want to jumpscare (an entity will be stuck in their face for a minute):","color":"green","italic":true}
scoreboard players set @s currItem 60
scoreboard players enable @s select
execute as @s run function ds:items/select_template