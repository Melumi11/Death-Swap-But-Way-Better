tellraw @a [{"text":">> ","color":"gray","bold":true},{"selector":"@s","color":"gold","bold":false},{"text":" joined the server mid-game and will spectate until the game is over!","color":"gray","bold":true}]

gamemode spectator @s
team join spectators @s
tag @s remove playing
title @s title {"text":"You will spectate","color":"gray"}
title @s subtitle {"text":"Until this game finishes!","color":"white"}