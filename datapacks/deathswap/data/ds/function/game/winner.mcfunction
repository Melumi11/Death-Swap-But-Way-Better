setblock -11 50 -12 minecraft:air
scoreboard players set timeRunning Core 0
scoreboard players set clockRunning Core 0
tp @a[tag=!playing] @p[tag=Winner]

effect give @a[tag=Winner] minecraft:glowing 12 1 true
title @a times 0 140 5
title @a title [{"text":">> ","color":"green"},{"selector":"@a[tag=Winner]"},{"text":" Won! <<","color":"green"}]
execute if score Lang Core matches 1 run title @a subtitle {"text":"They survived the way better death swap!","color":"aqua"}
execute if score Lang Core matches 2 run title @a subtitle {"text":"他们在更精彩的死亡交换游戏中获胜了!","color":"aqua"}
execute as @a at @s run playsound minecraft:entity.ender_dragon.death master @s ~ ~ ~ 99

execute if score Lang Core matches 1 run tellraw @a [{"text":"\n>>> ","color":"green","bold":true},{"selector":"@a[tag=Winner]","bold":false},{"text":" survived the longest and won the game! <<<\n","color":"green","bold":true}]
execute if score Lang Core matches 2 run tellraw @a [{"text":"\n>>> ","color":"green","bold":false},{"selector":"@a[tag=Winner]","bold":false},{"text":" 获得了最高分，赢得了比赛! <<<\n","color":"green","bold":false}]

execute as @a[tag=playing,tag=Winner] run scoreboard players add @s Wins 1

execute in minecraft:overworld run setblock -1 50 -15 minecraft:redstone_block
schedule function ds:prep/prep_back_to_hub 10s