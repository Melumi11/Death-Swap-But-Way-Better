scoreboard players remove @s Lives 1
scoreboard players set @s justDied 0
tellraw @a [{"text":">> ","color":"dark_red","bold":true},{"selector":"@s","bold":false},{"text":" > DIED! Lost a life!","color":"red","bold":true}]

execute if score Lang Core matches 1 run title @s title {"text":">> YOU DIED! <<","color":"red"}
execute if score Lang Core matches 2 run title @s title {"text":">> 你死了! <<","color":"red"}
title @s subtitle {"text":"-1 Life!","color":"gold"}
#execute as @a at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 9 1.2
#gamerule pvp false
effect give @s minecraft:resistance 10 5

tag @s[scores={permPNo=1}] add p1_justdied
tag @s[scores={permPNo=2}] add p2_justdied
tag @s[scores={permPNo=3}] add p3_justdied
tag @s[scores={permPNo=4}] add p4_justdied
tag @s[scores={permPNo=5}] add p5_justdied
tag @s[scores={permPNo=6}] add p6_justdied
tag @s[scores={permPNo=7}] add p7_justdied
tag @s[scores={permPNo=8}] add p8_justdied
tag @s[scores={permPNo=9}] add p9_justdied
tag @s[scores={permPNo=10}] add p10_justdied
tag @s[scores={permPNo=11}] add p11_justdied
tag @s[scores={permPNo=12}] add p12_justdied
schedule function ds:extra/post_death 2t

execute as @s if score @s Lives matches ..0 run function ds:game/player_eliminated
tag @s add no_death