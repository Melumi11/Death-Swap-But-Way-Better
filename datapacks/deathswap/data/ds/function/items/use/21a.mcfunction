execute as @s run function ds:items/use/all
tellraw @s {"text":"\n>> Click on which player you want give motion sickness (they will spin around for 45 seconds):","color":"green","italic":true}
scoreboard players set @s currItem 21
scoreboard players enable @s select
execute as @s run function ds:items/select_template