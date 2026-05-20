scoreboard players set @s look_down 0
tag @s remove look_down
tellraw @s {"text":"You can stop looking down now!","color":"green","bold":true}
title @s title " "
title @s subtitle {"text":"You can look up now!","color":"green"}