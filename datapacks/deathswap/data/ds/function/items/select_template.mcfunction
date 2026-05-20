execute if score Lang Core matches 2 run tellraw @s {"text":">> 点击你想对哪个玩家使用此物品:","color":"yellow"}

execute if score Lang Core matches 1 run tellraw @s {"color":"red","bold":true,"text":"DO NOT CLEAR THE CHAT!!!!"}
execute if score Lang Core matches 2 run tellraw @s {"color":"red","bold":true,"text":"不要清除聊天记录!!"}

tellraw @s [{"color":"dark_aqua","text":"["},{"click_event":{"action":"run_command","command":"trigger select set 1"},"selector":"@p[scores={permPNo=1},tag=!Shield]"},"]  [",{"click_event":{"action":"run_command","command":"trigger select set 2"},"selector":"@p[scores={permPNo=2},tag=!Shield]"},"]  [",{"click_event":{"action":"run_command","command":"trigger select set 3"},"selector":"@p[scores={permPNo=3},tag=!Shield]"},"]  [",{"click_event":{"action":"run_command","command":"trigger select set 4"},"selector":"@p[scores={permPNo=4},tag=!Shield]"},"]  [",{"click_event":{"action":"run_command","command":"trigger select set 5"},"selector":"@p[scores={permPNo=5},tag=!Shield]"},"]  [",{"click_event":{"action":"run_command","command":"trigger select set 6"},"selector":"@p[scores={permPNo=6},tag=!Shield]"},"]  [",{"click_event":{"action":"run_command","command":"trigger select set 7"},"selector":"@p[scores={permPNo=7},tag=!Shield]"},"]  [",{"click_event":{"action":"run_command","command":"trigger select set 8"},"selector":"@p[scores={permPNo=8},tag=!Shield]"},"]  [",{"click_event":{"action":"run_command","command":"trigger select set 9"},"selector":"@p[scores={permPNo=9},tag=!Shield]"},"]  [",{"click_event":{"action":"run_command","command":"trigger select set 10"},"selector":"@p[scores={permPNo=10},tag=!Shield]"},"]  [",{"click_event":{"action":"run_command","command":"trigger select set 11"},"selector":"@p[scores={permPNo=11},tag=!Shield]"},"]  [",{"click_event":{"action":"run_command","command":"trigger select set 12"},"selector":"@p[scores={permPNo=12},tag=!Shield]"},"]"]

title @s title " "
title @s subtitle {"text":"Look in chat!","color":"gold"}
execute if score Lang Core matches 1 if entity @p[tag=playing,tag=Shield] run tellraw @s [{"selector":"@a[tag=Shield]","italic":true},{"text":" is/are shielded from items!","color":"yellow"}]
execute if score Lang Core matches 2 if entity @p[tag=playing,tag=Shield] run tellraw @s [{"selector":"@a[tag=Shield]","italic":true},{"text":" 对负面影响免疫!","color":"yellow"}]

tag @s add choosing_player