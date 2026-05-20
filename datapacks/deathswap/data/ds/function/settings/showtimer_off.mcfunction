title @a title {"text":"Show Timer: Off!","color":"aqua"}
execute if score Lang Core matches 1 run title @a subtitle "Time until swap will be hidden!"
execute if score Lang Core matches 2 run title @a subtitle "显示倒间的计时器将被隐藏!"
execute as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 9
tellraw @a [{"text":"[=-=-=-= ","color":"light_purple","bold":true},{"text":"Show Swap Timer: Off","color":"aqua","bold":true},{"text":" =-=-=-=]","color":"light_purple"}]

execute if score Lang Core matches 1 run tellraw @a {"text":"The timer for showing the next swap won't be shown -- hope you're good at keeping track of time!","color":"yellow"}
execute if score Lang Core matches 2 run tellraw @a {"text":"显示倒计时时间的计时器将被隐藏 -- 希望你擅长掌握时间!","color":"yellow"}

scoreboard players set showTimer Core 0