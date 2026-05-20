execute as @s run function ds:items/use/all
tellraw @s {"text":"\n>> Click on which player you want to delete the Chunk they're standing in (a chunk is 16x16 blocks):","color":"light_purple","italic":true}
scoreboard players set @s currItem 87
scoreboard players enable @s select
execute as @s run function ds:items/select_template