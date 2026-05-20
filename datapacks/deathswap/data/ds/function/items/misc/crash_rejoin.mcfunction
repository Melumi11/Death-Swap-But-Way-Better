scoreboard players set waitForCrashPlayer Core 0
scoreboard players set someoneCrashed Core 0
kill @e[tag=crash_rejoin]
tellraw @a [{"text":">>> ","color":"yellow","bold":true},{"selector":"@s","bold":false},{"text":" is back after a minor Minecraft crash!","color":"yellow","bold":true}]
title @s title {"text":"You made it back!","color":"yellow"}
title @s subtitle "Took you quite a while.."
tag @s remove game_crashed
tag @s remove immune_to_swap
tag @s[scores={Shield=0}] remove Shield