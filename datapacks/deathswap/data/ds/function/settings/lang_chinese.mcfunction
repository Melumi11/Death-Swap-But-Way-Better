title @a title {"text":"语言：中文!","color":"light_purple"}
title @a subtitle "游戏将使用中文! / Game will be in Chinese!"
execute as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 9
tellraw @a [{"text":"[=-=-=-= ","color":"light_purple","bold":true},{"text":"语言：中文","color":"white","bold":true},{"text":" =-=-=-=]","color":"light_purple"}]

tellraw @a {"text":"我是来自加利福尼亚州的英语母语人士. 不过, 这张地图的大部分内容是我使用谷歌翻译翻译成中文的. 我已经核实了所有翻译的准确性, 但可能存在一些语法错误!","color":"white"}

scoreboard players set Lang Core 2