execute as @s run function ds:items/use/all
tellraw @s {"text":"\n>> Click on which player you want to give speed 1 billion (super super fast) to:","color":"aqua","italic":true}
scoreboard players set @s currItem 1
scoreboard players enable @s select
execute as @s run function ds:items/select_template