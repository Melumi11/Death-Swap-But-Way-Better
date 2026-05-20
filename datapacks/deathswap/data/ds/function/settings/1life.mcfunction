title @a title {"text":"1 Life!","color":"green"}
title @a subtitle "Each player gets 1 life!"
execute as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 9
tellraw @a [{"text":"[=-=-=-= ","color":"light_purple","bold":true},{"text":"Players have: 1 Life","color":"green","bold":true},{"text":" =-=-=-=]","color":"light_purple"}]

scoreboard players set maxLives Core 1