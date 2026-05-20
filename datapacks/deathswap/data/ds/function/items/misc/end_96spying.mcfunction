gamemode survival @s
scoreboard players set @s 96spying 0
tp @s @e[limit=1,tag=96prev]
trigger 96spying set 1
execute as @s at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 99 1

execute if score Lang Core matches 1 run tellraw @s {"text":">> You successfully spied on someone like it's the Cold War! <<","color":"green","bold":true}
execute if score Lang Core matches 1 if score @s time96 matches ..5 run tellraw @s {"text":"> You spied on your target too long! You were teleported back! <","color":"red"}

execute if score Lang Core matches 2 run tellraw @s {"text":">> 你成功地监视了某人, 就像冷战时期一样! <<","color":"green","bold":true}
execute if score Lang Core matches 2 if score @s time96 matches ..5 run tellraw @s {"text":"> 你监视目标的时间太长了! 你已被传送回来! <","color":"red"}

kill @e[tag=96prev]
scoreboard players set @s time96 0
tag @s remove 96spying