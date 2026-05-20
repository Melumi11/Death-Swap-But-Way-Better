execute as @s run function ds:items/use/all
execute if score Lang Core matches 1 run tag @s add switch_to_ch
execute if score Lang Core matches 2 run tag @s add switch_to_en

execute if entity @s[tag=switch_to_ch] run function ds:settings/lang_chinese
execute if entity @s[tag=switch_to_en] run function ds:settings/lang_english

execute if entity @s[tag=switch_to_ch] run tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Switched the game's language to Chinese! 已将游戏语言切换为中文!","color":"light_purple"}]
execute if entity @s[tag=switch_to_en] run tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"已将游戏语言切换为英语! Switched the game's language to English!","color":"light_purple"}]

tag @a remove switch_to_ch
tag @a remove switch_to_en
execute as @s run function ds:items/after_use