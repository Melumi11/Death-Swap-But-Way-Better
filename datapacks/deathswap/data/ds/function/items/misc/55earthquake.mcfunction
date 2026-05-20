scoreboard players remove 55TimeT Items 1
execute if score 55TimeT Items matches ..0 run scoreboard players remove 55TimeS Items 1
execute if score 55TimeT Items matches ..0 run scoreboard players set 55TimeT Items 20

execute if score 55TimeT Items matches 19 run rotate @s ~0.4 ~6
execute if score 55TimeT Items matches 17 run rotate @s ~-0.4 ~-6
execute if score 55TimeT Items matches 15 run rotate @s ~0.4 ~6
execute if score 55TimeT Items matches 13 run rotate @s ~-0.4 ~-6
execute if score 55TimeT Items matches 11 run rotate @s ~0.4 ~6
execute if score 55TimeT Items matches 9 run rotate @s ~-0.4 ~-6
execute if score 55TimeT Items matches 7 run rotate @s ~0.4 ~6
execute if score 55TimeT Items matches 5 run rotate @s ~-0.4 ~-6
execute if score 55TimeT Items matches 3 run rotate @s ~0.4 ~6
execute if score 55TimeT Items matches 1 run rotate @s ~-0.4 ~-6

execute if score 55TimeS Items matches 55 if score 55TimeT Items matches 19 as @s at @s run function ds:extra/all_to_stone {c:"fill ~10 ~8 ~10 ~-10 ~-1 ~-10 minecraft:gravel replace #minecraft:"}
execute if score 55TimeS Items matches 39 if score 55TimeT Items matches 19 as @s at @s run function ds:extra/all_to_stone {c:"fill ~10 ~8 ~10 ~-10 ~-1 ~-10 minecraft:gravel replace #minecraft:"}
execute if score 55TimeS Items matches 21 if score 55TimeT Items matches 19 as @s at @s run function ds:extra/all_to_stone {c:"fill ~10 ~8 ~10 ~-10 ~-1 ~-10 minecraft:gravel replace #minecraft:"}
execute if score 55TimeS Items matches 3 if score 55TimeT Items matches 19 as @s at @s run function ds:extra/all_to_stone {c:"fill ~10 ~8 ~10 ~-10 ~-1 ~-10 minecraft:gravel replace #minecraft:"}

execute if score 55TimeS Items matches 55 if score 55TimeT Items matches 19 as @s at @s run function ds:extra/all_to_stone {c:"fill ~10 ~-2 ~10 ~-10 ~-6 ~-10 minecraft:gravel replace #minecraft:"}
execute if score 55TimeS Items matches 39 if score 55TimeT Items matches 19 as @s at @s run function ds:extra/all_to_stone {c:"fill ~10 ~-2 ~10 ~-10 ~-6 ~-10 minecraft:gravel replace #minecraft:"}
execute if score 55TimeS Items matches 21 if score 55TimeT Items matches 19 as @s at @s run function ds:extra/all_to_stone {c:"fill ~10 ~-2 ~10 ~-10 ~-6 ~-10 minecraft:gravel replace #minecraft:"}
execute if score 55TimeS Items matches 3 if score 55TimeT Items matches 19 as @s at @s run function ds:extra/all_to_stone {c:"fill ~10 ~-2 ~10 ~-10 ~-6 ~-10 minecraft:gravel replace #minecraft:"}

execute if score 55TimeS Items matches 55 if score 55TimeT Items matches 19 as @s at @s run function ds:extra/all_to_stone {c:"fill ~10 ~-7 ~10 ~-10 ~-24 ~-10 minecraft:gravel replace #minecraft:"}
execute if score 55TimeS Items matches 39 if score 55TimeT Items matches 19 as @s at @s run function ds:extra/all_to_stone {c:"fill ~10 ~-7 ~10 ~-10 ~-24 ~-10 minecraft:gravel replace #minecraft:"}
execute if score 55TimeS Items matches 21 if score 55TimeT Items matches 19 as @s at @s run function ds:extra/all_to_stone {c:"fill ~10 ~-7 ~10 ~-10 ~-24 ~-10 minecraft:gravel replace #minecraft:"}
execute if score 55TimeS Items matches 3 if score 55TimeT Items matches 19 as @s at @s run function ds:extra/all_to_stone {c:"fill ~10 ~-7 ~10 ~-10 ~-24 ~-10 minecraft:gravel replace #minecraft:"}

#execute if score 55TimeS Items matches 55 if score 55TimeT Items matches 19 as @s[scores={Ycoord=..-42}] at @s run function ds:extra/all_to_stone {c:"fill ~10 ~7 ~10 ~-10 -63 ~-10 minecraft:gravel replace #minecraft:"}
#execute if score 55TimeS Items matches 39 if score 55TimeT Items matches 19 as @s[scores={Ycoord=..-42}] at @s run function ds:extra/all_to_stone {c:"fill ~10 ~7 ~10 ~-10 -63 ~-10 minecraft:gravel replace #minecraft:"}
#execute if score 55TimeS Items matches 21 if score 55TimeT Items matches 19 as @s[scores={Ycoord=..-42}] at @s run function ds:extra/all_to_stone {c:"fill ~10 ~7 ~10 ~-10 -63 ~-10 minecraft:gravel replace #minecraft:"}
#execute if score 55TimeS Items matches 3 if score 55TimeT Items matches 19 as @s[scores={Ycoord=..-42}] at @s run function ds:extra/all_to_stone {c:"fill ~10 ~7 ~10 ~-10 -63 ~-10 minecraft:gravel replace #minecraft:"}

execute as @s at @s if score 55TimeT Items matches 19 run playsound minecraft:block.stone.break master @s ~ ~ ~ 9
execute as @s at @s if score 55TimeT Items matches 15 run playsound minecraft:block.stone.break master @s ~ ~ ~ 9
execute as @s at @s if score 55TimeT Items matches 11 run playsound minecraft:block.stone.break master @s ~ ~ ~ 9
execute as @s at @s if score 55TimeT Items matches 7 run playsound minecraft:block.stone.break master @s ~ ~ ~ 9
execute as @s at @s if score 55TimeT Items matches 3 run playsound minecraft:block.stone.break master @s ~ ~ ~ 9

execute as @s at @s if score 55TimeT Items matches 19 run particle block{block_state:"minecraft:gravel"} ~ ~ ~ 1.6 1.6 1.6 1 300 normal @s
execute as @s at @s if score 55TimeT Items matches 12 run particle block{block_state:"minecraft:gravel"} ~ ~ ~ 1.6 1.6 1.6 1 300 normal @s
execute as @s at @s if score 55TimeT Items matches 5 run particle block{block_state:"minecraft:gravel"} ~ ~ ~ 1.6 1.6 1.6 1 300 normal @s

execute if score 55TimeS Items matches 1 if score 55TimeT Items matches ..2 run function ds:items/misc/done55earthquake