scoreboard players set timeRunning Core 0
scoreboard players set clockRunning Core 0
tag @a[tag=playing] add Winner
tp @a[tag=!playing] @p[tag=playing]
effect give @a[tag=playing] glowing 6 1 true
gamerule pvp false
effect clear @a
effect give @a minecraft:resistance 20 5 true
effect give @a minecraft:saturation 20 5 true
execute as @a[tag=Winner] run item replace entity @s weapon.offhand with minecraft:totem_of_undying
title @a times 0 80 5

setblock -17 50 -15 minecraft:redstone_block