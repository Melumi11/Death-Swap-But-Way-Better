title @a title {"text":"LANGUAGE: English!","color":"light_purple"}
title @a subtitle "Game will be in English! / 游戏将使用英语!"
execute as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 9
tellraw @a [{"text":"[=-=-=-= ","color":"light_purple","bold":true},{"text":"Language: English","color":"white","bold":true},{"text":" =-=-=-=]","color":"light_purple"}]

#tellraw @a {"text":"I am a native English speaker attempting to make a bilingual map, but luckily you don't have to worry about that!","color":"white"}

scoreboard players set Lang Core 1