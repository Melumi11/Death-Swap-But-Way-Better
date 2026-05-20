scoreboard players add gamesPlayed Core 1

execute if score Lang Core matches 1 run tellraw @a [{"text":"The game lasted ","color":"yellow","bold":true},{"score":{"name":"totalTimeM","objective":"Core"},"color":"white","bold":false},{"text":" minutes and ","color":"yellow","bold":true},{"score":{"name":"totalTimeS","objective":"Core"},"color":"white","bold":false},{"text":" seconds!"}]
execute if score Lang Core matches 2 run tellraw @a [{"text":"这场比赛持续了","color":"yellow"},{"score":{"name":"totalTimeM","objective":"Core"},"color":"white","bold":false},{"text":"分钟","color":"yellow"},{"score":{"name":"totalTimeS","objective":"Core"},"color":"white","bold":false},{"text":"秒!"}]

execute if score Lang Core matches 1 run tellraw @a [{"text":"You played this game ","color":"green","italic":true},{"score":{"name":"gamesPlayed","objective":"Core"},"color":"gold","italic":true},{"text":" time/s","color":"green","italic":true}]
execute if score Lang Core matches 2 run tellraw @a [{"text":"你玩过这个游戏","color":"green","italic":true},{"score":{"name":"gamesPlayed","objective":"Core"},"color":"gold","italic":true},{"text":"次","color":"green","italic":true}]

execute if score Lang Core matches 1 run title @a title {"text":"Look in chat!","color":"gold"}
execute if score Lang Core matches 1 run title @a subtitle {"text":"Stats are posted there!","color":"gold"}
execute if score Lang Core matches 2 run title @a title {"text":"看看聊天记录!","color":"gold"}
execute if score Lang Core matches 2 run title @a subtitle {"text":"游戏的统计数据会发布在那里!","color":"gold"}

function ds:prep/reset_game
setworldspawn 2 111 -2 14 0
spawnpoint @a 2 111 -2 14 0
scoreboard players set settingsOn Core 1
scoreboard players set gameOn Core 0
gamemode adventure @a
gamerule pvp false
team join Players @a
tag @a add playing
scoreboard objectives setdisplay sidebar Wins
title @a reset
tp @a 0 111 0 0 0
gamerule send_command_feedback true

schedule function ds:extra/place_start_button 5t