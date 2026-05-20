title @a title {"text":"Advancements: Hidden!","color":"white"}
execute if score Lang Core matches 1 run title @a subtitle "Players' advancements will be hidden!"
execute if score Lang Core matches 2 run title @a subtitle "玩家的成就将被隐藏!"
execute as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 9
tellraw @a [{"text":"[=-=-=-= ","color":"light_purple","bold":true},{"text":"Advancements: Hidden","color":"white","bold":true},{"text":" =-=-=-=]","color":"light_purple"}]

execute if score Lang Core matches 1 run tellraw @a {"text":"Any advancements (like getting diamonds or entering the nether) won't be shown to anyone so it'll be kept a secret!","color":"white"}
execute if score Lang Core matches 2 run tellraw @a {"text":"任何成就（例如获得钻石或进入下界nether）都不会向任何人展示，因此会保密!","color":"white"}

gamerule show_advancement_messages false
scoreboard players set hideAdvancements Core 1