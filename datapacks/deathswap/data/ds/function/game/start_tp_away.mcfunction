execute as @a[tag=playing] run scoreboard players enable @s tp_away

execute if score Lang Core matches 1 run tellraw @a [{"text":">> ","color":"dark_purple","italic":true},{"text":"IMPORTANT: ","color":"red"},{"text":"You can type ''","color":"light_purple"},{"text":"/trigger tp_away","color":"green","italic":false},{"text":"'' once every 8 minutes if the area you're in gets too laggy for the server! ","color":"light_purple"},{"text":"Remember this!!","color":"yellow"}]

execute if score Lang Core matches 2 run tellraw @a [{"text":">> ","color":"dark_purple","italic":true},{"text":"非常重要: ","color":"red"},{"text":"您可以在聊天框中输入: ''","color":"light_purple"},{"text":"/trigger tp_away","color":"green","italic":false},{"text":"'' 如果你所在的区域对服务器而言变得过于卡顿，则每 8 分钟触发一次! ","color":"light_purple"},{"text":"记住这一点!!","color":"yellow"}]

execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 9
execute as @a at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 9