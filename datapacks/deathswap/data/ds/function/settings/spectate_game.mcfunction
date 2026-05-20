team join spectators @s
title @a title [{"selector":"@s"},{"text":" will spectate!","color":"white"}]
title @a subtitle "They will sit out of this game!"
tellraw @a [{"text":"[=-=-=-= ","color":"light_purple","bold":true},{"selector":"@s","bold":false,"color":"white"},{"text":" will Spectate the Game","color":"gray","bold":true},{"text":" =-=-=-=]","color":"light_purple","bold":true}]
execute as @a at @s run playsound minecraft:ui.button.click
tag @s remove playing