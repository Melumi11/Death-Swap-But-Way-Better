title @a title {"text":"PvP/Punching: On!","color":"#FFBFB5"}
execute if score Lang Core matches 1 run title @a subtitle "You can directly attack each other!"
execute if score Lang Core matches 2 run title @a subtitle "你们可以直接互相攻击!"
execute as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 9
tellraw @a [{"text":"[=-=-=-= ","color":"light_purple","bold":true},{"text":"PvP/Punching: Enabled","color":"#FFBFB5","bold":true},{"text":" =-=-=-=]","color":"light_purple"}]

scoreboard players set pvp Core 1