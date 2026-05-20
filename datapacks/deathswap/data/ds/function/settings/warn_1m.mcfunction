title @a title {"text":"1 Min. Warning!","color":"red"}
execute if score Lang Core matches 1 run title @a subtitle "1 minute warning until swaps!"
execute if score Lang Core matches 2 run title @a subtitle "交易开始前会有一分钟倒计时提醒!"
execute as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 9
tellraw @a [{"text":"[=-=-=-= ","color":"light_purple","bold":true},{"text":"Swap Warning: 1 Minute","color":"red","bold":true},{"text":" =-=-=-=]","color":"light_purple"}]

execute if score Lang Core matches 1 run tellraw @a {"text":"You will be given a 1 minute warning before swaps happen!","color":"red"}
execute if score Lang Core matches 2 run tellraw @a {"text":"在进行兑换操作之前，您将收到一分钟的警告通知!","color":"red"}

scoreboard players set warnLvl Core 4