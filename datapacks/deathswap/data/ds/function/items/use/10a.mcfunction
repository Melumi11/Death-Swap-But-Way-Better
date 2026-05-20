execute as @s run function ds:items/use/all
tellraw @s {"text":"\n>> Click on which player you want to teleport to the middle of the ocean (no land in sight):","color":"blue","italic":true}
scoreboard players set @s currItem 10
scoreboard players enable @s select
execute as @s run function ds:items/select_template