title @a title {"text":"30 Sec. Warning!","color":"red"}
execute if score Lang Core matches 1 run title @a subtitle "30 second warning until swaps!"
execute if score Lang Core matches 2 run title @a subtitle "在交易开始前会有30秒的倒计时提醒!"
execute as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 9
tellraw @a [{"text":"[=-=-=-= ","color":"light_purple","bold":true},{"text":"Swap Warning: 30 Seconds","color":"red","bold":true},{"text":" =-=-=-=]","color":"light_purple"}]

execute if score Lang Core matches 1 run tellraw @a {"text":"You will be given a 30 second warning before swaps happen!","color":"red"}
execute if score Lang Core matches 2 run tellraw @a {"text":"在进行交换操作之前，您将收到30秒的警告!","color":"red"}

scoreboard players set warnLvl Core 3