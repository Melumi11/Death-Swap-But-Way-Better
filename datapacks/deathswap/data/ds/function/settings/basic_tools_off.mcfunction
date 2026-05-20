title @a title {"text":"Start w/ Nothing!","color":"gray"}
execute if score Lang Core matches 1 run title @a subtitle "Everyone starts with nothing!"
execute if score Lang Core matches 2 run title @a subtitle "每个人都是从一无所有开始!"
execute as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 9
tellraw @a [{"text":"[=-=-=-= ","color":"light_purple","bold":true},{"text":"Start With: Nothing","color":"gray","bold":true},{"text":" =-=-=-=]","color":"light_purple"}]

execute if score Lang Core matches 1 run tellraw @a {"text":"Everyone will start the game empty-handed, with no basic tools!","color":"gray"}
execute if score Lang Core matches 2 run tellraw @a {"text":"游戏开始时, 所有人都将两手空空, 没有任何基本工具!","color":"gray"}

scoreboard players set basicTools Core 0