execute if score Lang Core matches 1 run title @a title {"text":"Random Cycles: On!","color":"yellow"}
execute if score Lang Core matches 1 run title @a subtitle "See chat for a description of this setting!"
execute if score Lang Core matches 2 run title @a title {"text":"随机循环：开启!","color":"yellow"}
execute if score Lang Core matches 2 run title @a subtitle "请查看聊天记录，了解此设置的说明!"

execute as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 9
tellraw @a [{"text":"[=-=-=-= ","color":"light_purple","bold":true},{"text":"Random Cycles: Turned ON","color":"yellow","bold":true},{"text":" =-=-=-=]","color":"light_purple"}]

execute if score Lang Core matches 1 run tellraw @a {"text":"The time in between swaps are completely randomized! Once a swap happens, the time until the next swap is randomly selected to be between 30 seconds and 5 minutes, and you won't know how long it'll be! (unless you have the timer set to be displayed..)","color":"yellow"}
execute if score Lang Core matches 2 run tellraw @a {"text":"两次切换之间的时间间隔是完全随机的! 每次切换发生后，下一次切换的时间间隔会在 30 秒到 5 分钟之间随机选择，而且您无法预知具体时间! (除非您设置了显示计时器。)","color":"yellow"}

scoreboard players set randomCycle Core 1