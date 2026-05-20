execute as @s run function ds:items/use/all

execute if score Lang Core matches 1 run tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Made the swap happen right NOW! (Note: the swap timer did NOT reset!)","color":"yellow"}]
execute if score Lang Core matches 2 run tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"立即完成交换! (注意：交换计时器没有重置!)","color":"yellow"}]

schedule function ds:game/reassign_pno 3t
schedule function ds:game/swap 4t
scoreboard players add TimeS Core 6

#scoreboard players set TimeM Core 0
#execute if score warnLvl Core matches 0.. run scoreboard players set TimeS Core 1
#execute if score warnLvl Core matches 1.. run scoreboard players set TimeS Core 6
#scoreboard players set TimeT Core 6

execute as @a at @s run playsound minecraft:item.shield.break master @s ~ ~ ~ 9
execute as @s run function ds:items/after_use