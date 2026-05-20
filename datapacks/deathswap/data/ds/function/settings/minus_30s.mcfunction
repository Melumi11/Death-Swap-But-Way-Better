execute if score timeCycle Core matches ..100 run title @a title {"text":"Can't go lower!","color":"gold"}
execute if score timeCycle Core matches ..100 if score Lang Core matches 1 run title @a subtitle "Swap cycle can't get any lower!"
execute if score timeCycle Core matches ..100 if score Lang Core matches 2 run title @a subtitle "交换周期无法再降低了!"

execute as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 9

execute if score timeCycle Core matches 150.. if score Lang Core matches 1 run title @a subtitle "Swap cycle lowered to this length!"
execute if score timeCycle Core matches 150.. if score Lang Core matches 2 run title @a subtitle "交换周期缩短至此长度!"
execute if score timeCycle Core matches 150.. run scoreboard players remove timeCycle Core 50

execute if score timeCycle Core matches 100 if score Lang Core matches 1 run title @a title {"text":"Cycle: 1 minute","color":"gold"}
execute if score timeCycle Core matches 100 if score Lang Core matches 2 run title @a title {"text":"周期：1分钟","color":"gold"}
execute if score timeCycle Core matches 100 run tellraw @a [{"text":"[=-=-=-= ","color":"light_purple","bold":true},{"text":"Swap cycle lowered to every 1 minute","color":"gold","bold":true},{"text":" =-=-=-=]","color":"light_purple"}]

execute if score timeCycle Core matches 150 if score Lang Core matches 1 run title @a title {"text":"Cycle: 1.5 minutes","color":"gold"}
execute if score timeCycle Core matches 150 if score Lang Core matches 2 run title @a title {"text":"周期：1.5分钟","color":"gold"}
execute if score timeCycle Core matches 150 run tellraw @a [{"text":"[=-=-=-= ","color":"light_purple","bold":true},{"text":"Swap cycle lowered to every 1.5 minutes","color":"gold","bold":true},{"text":" =-=-=-=]","color":"light_purple"}]

execute if score timeCycle Core matches 200 if score Lang Core matches 1 run title @a title {"text":"Cycle: 2 minutes","color":"gold"}
execute if score timeCycle Core matches 200 if score Lang Core matches 2 run title @a title {"text":"周期：2分钟","color":"gold"}
execute if score timeCycle Core matches 200 run tellraw @a [{"text":"[=-=-=-= ","color":"light_purple","bold":true},{"text":"Swap cycle lowered to every 2 minutes","color":"gold","bold":true},{"text":" =-=-=-=]","color":"light_purple"}]

execute if score timeCycle Core matches 250 if score Lang Core matches 1 run title @a title {"text":"Cycle: 2.5 minutes","color":"gold"}
execute if score timeCycle Core matches 250 if score Lang Core matches 2 run title @a title {"text":"周期：2.5分钟","color":"gold"}
execute if score timeCycle Core matches 250 run tellraw @a [{"text":"[=-=-=-= ","color":"light_purple","bold":true},{"text":"Swap cycle lowered to every 2.5 minutes","color":"gold","bold":true},{"text":" =-=-=-=]","color":"light_purple"}]

execute if score timeCycle Core matches 300 if score Lang Core matches 1 run title @a title {"text":"Cycle: 3 minutes","color":"gold"}
execute if score timeCycle Core matches 300 if score Lang Core matches 2 run title @a title {"text":"周期：3分钟","color":"gold"}
execute if score timeCycle Core matches 300 run tellraw @a [{"text":"[=-=-=-= ","color":"light_purple","bold":true},{"text":"Swap cycle lowered to every 3 minutes","color":"gold","bold":true},{"text":" =-=-=-=]","color":"light_purple"}]

execute if score timeCycle Core matches 350 if score Lang Core matches 1 run title @a title {"text":"Cycle: 3.5 minutes","color":"gold"}
execute if score timeCycle Core matches 350 if score Lang Core matches 2 run title @a title {"text":"周期：3.5分钟","color":"gold"}
execute if score timeCycle Core matches 350 run tellraw @a [{"text":"[=-=-=-= ","color":"light_purple","bold":true},{"text":"Swap cycle lowered to every 3.5 minutes","color":"gold","bold":true},{"text":" =-=-=-=]","color":"light_purple"}]

execute if score timeCycle Core matches 400 if score Lang Core matches 1 run title @a title {"text":"Cycle: 4 minutes","color":"gold"}
execute if score timeCycle Core matches 400 if score Lang Core matches 2 run title @a title {"text":"周期：4分钟","color":"gold"}
execute if score timeCycle Core matches 400 run tellraw @a [{"text":"[=-=-=-= ","color":"light_purple","bold":true},{"text":"Swap cycle lowered to every 4 minutes","color":"gold","bold":true},{"text":" =-=-=-=]","color":"light_purple"}]

execute if score timeCycle Core matches 450 if score Lang Core matches 1 run title @a title {"text":"Cycle: 4.5 minutes","color":"gold"}
execute if score timeCycle Core matches 450 if score Lang Core matches 2 run title @a title {"text":"周期：4.5分钟","color":"gold"}
execute if score timeCycle Core matches 450 run tellraw @a [{"text":"[=-=-=-= ","color":"light_purple","bold":true},{"text":"Swap cycle lowered to every 4.5 minutes","color":"gold","bold":true},{"text":" =-=-=-=]","color":"light_purple"}]

execute if score timeCycle Core matches 500 if score Lang Core matches 1 run title @a title {"text":"Cycle: 5 minutes","color":"gold"}
execute if score timeCycle Core matches 500 if score Lang Core matches 2 run title @a title {"text":"周期：5分钟","color":"gold"}
execute if score timeCycle Core matches 500 run tellraw @a [{"text":"[=-=-=-= ","color":"light_purple","bold":true},{"text":"Swap cycle lowered to every 5 minutes","color":"gold","bold":true},{"text":" =-=-=-=]","color":"light_purple"}]

execute if score randomCycle Core matches 1 if score Lang Core matches 1 run tellraw @a {"text":">> Random Cycles were turned OFF! <<","color":"yellow","bold":true}
execute if score randomCycle Core matches 1 if score Lang Core matches 2 run tellraw @a {"text":">> 随机交换周期已关闭! <<","color":"yellow","bold":true}
execute if score randomCycle Core matches 1 run scoreboard players set randomCycle Core 0