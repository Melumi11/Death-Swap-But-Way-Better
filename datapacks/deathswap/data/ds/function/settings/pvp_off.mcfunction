title @a title {"text":"PvP/Punching: Off!","color":"#FFBFB5"}
execute if score Lang Core matches 1 run title @a subtitle "You cannot directly attack each other!"
execute if score Lang Core matches 2 run title @a subtitle "你们不能直接攻击对方!"
execute as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 9
tellraw @a [{"text":"[=-=-=-= ","color":"light_purple","bold":true},{"text":"PvP/Punching: Disabled","color":"#FFBFB5","bold":true},{"text":" =-=-=-=]","color":"light_purple"}]

scoreboard players set pvp Core 0