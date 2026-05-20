title @a title {"text":"Show Timer: On!","color":"aqua"}
execute if score Lang Core matches 1 run title @a subtitle "Time until swap will be shown!"
execute if score Lang Core matches 2 run title @a subtitle "将显示距离交换完成所需的时间!"
execute as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 9
tellraw @a [{"text":"[=-=-=-= ","color":"light_purple","bold":true},{"text":"Show Swap Timer: On","color":"aqua","bold":true},{"text":" =-=-=-=]","color":"light_purple"}]

execute if score Lang Core matches 1 run tellraw @a {"text":"The timer for showing the next swap will be displayed in the actionbar (above the hotbar)!","color":"yellow"}
execute if score Lang Core matches 2 run tellraw @a {"text":"显示下一次交换物品的计时器将显示在操作栏 (快捷栏上方)!","color":"yellow"}

scoreboard players set showTimer Core 1