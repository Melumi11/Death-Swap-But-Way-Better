title @a title {"text":"Advancements: Shown!","color":"white"}
execute if score Lang Core matches 1 run title @a subtitle "Players' advancements will be broadcasted!"
execute if score Lang Core matches 2 run title @a subtitle "玩家的成就将被公开广播!"
execute as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 9
tellraw @a [{"text":"[=-=-=-= ","color":"light_purple","bold":true},{"text":"Advancements: Shown","color":"white","bold":true},{"text":" =-=-=-=]","color":"light_purple"}]

execute if score Lang Core matches 1 run tellraw @a {"text":"Any advancements (like getting diamonds or entering the nether) will be publicly broadcasted to everyone!","color":"white"}
execute if score Lang Core matches 2 run tellraw @a {"text":"任何成就（例如获得钻石或进入下界nether）都将向所有人公开广播!","color":"white"}

gamerule show_advancement_messages true
scoreboard players set hideAdvancements Core 0