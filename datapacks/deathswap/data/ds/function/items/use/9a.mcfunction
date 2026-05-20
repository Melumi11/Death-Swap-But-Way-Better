execute as @s run function ds:items/use/all
execute as @s at @s run function ds:items/misc/gravel_base
execute as @s at @s run rotate @s -90 ~

execute if score Lang Core matches 1 run tellraw @s {"text":"A gravel tower was placed right in front of you!","color":"white"}
execute if score Lang Core matches 2 run tellraw @s {"text":"一座碎石堆砌的塔就矗立在你面前!","color":"white"}
execute as @s at @s run playsound minecraft:block.stone.break master @s ~ ~ ~ 99

execute as @s run function ds:items/after_use