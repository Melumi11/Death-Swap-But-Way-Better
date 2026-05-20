tellraw @s {"text":"You're back in survival mode now!","color":"aqua"}
execute as @s at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 9 2
scoreboard players set @s specMode 0
gamemode survival @s
tag @s remove specMode