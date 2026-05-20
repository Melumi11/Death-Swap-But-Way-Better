title @a title {"text":"Start w/ Basic Tools!","color":"gray"}
execute if score Lang Core matches 1 run title @a subtitle "Everyone starts with stone tools!"
execute if score Lang Core matches 2 run title @a subtitle "所有人都是从石器工具开始的!"
execute as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 9
tellraw @a [{"text":"[=-=-=-= ","color":"light_purple","bold":true},{"text":"Start With: Basic Tools","color":"gray","bold":true},{"text":" =-=-=-=]","color":"light_purple"}]

execute if score Lang Core matches 1 run tellraw @a {"text":"Everyone will start the game with a stone sword, pickaxe, axe, shovel, & crafting table!","color":"gray"}
execute if score Lang Core matches 2 run tellraw @a {"text":"游戏开始时, 每位玩家都会获得一把石剑、一把镐、一把斧子、一把铲子和一张工作台!","color":"gray"}

scoreboard players set basicTools Core 1