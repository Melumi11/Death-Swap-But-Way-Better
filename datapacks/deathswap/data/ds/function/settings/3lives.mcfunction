title @a title {"text":"3 Lives!","color":"green"}
title @a subtitle "Each player gets 3 lives!"
execute as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 9
tellraw @a [{"text":"[=-=-=-= ","color":"light_purple","bold":true},{"text":"Players have: 3 Lives","color":"green","bold":true},{"text":" =-=-=-=]","color":"light_purple"}]

scoreboard players set maxLives Core 3