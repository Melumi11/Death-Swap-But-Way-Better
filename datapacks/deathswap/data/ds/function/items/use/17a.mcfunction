execute as @s run function ds:items/use/all
execute as @s at @s run fill ~3 ~2 ~ ~6 -64 ~2 minecraft:air
execute as @s at @s run fill ~1 ~ ~ ~5 ~1 ~ minecraft:air
execute as @s at @s run rotate @s -90 ~

execute if score Lang Core matches 1 run tellraw @s {"text":">> A hole to the void summoned in front of you! <<","color":"white"}
execute if score Lang Core matches 2 run tellraw @s {"text":">> 一个通往虚空的洞口在你面前出现! <<","color":"white"}
execute as @s at @s run playsound minecraft:block.stone.break master @s ~ ~ ~ 99

execute as @s run function ds:items/after_use