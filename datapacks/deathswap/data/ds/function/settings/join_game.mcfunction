team join Players @s
title @a title [{"selector":"@s"},{"text":" will play!","color":"light_purple"}]
title @a subtitle "They will play this game!"
tellraw @a [{"text":"[=-=-=-= ","color":"light_purple","bold":true},{"selector":"@s","bold":false,"color":"gold"},{"text":" will Play the Game","color":"yellow","bold":true},{"text":" =-=-=-=]","color":"light_purple","bold":true}]
execute as @a at @s run playsound minecraft:ui.button.click
tag @s add playing