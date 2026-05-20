execute if score maxLives Core matches ..1 run title @a title {"text":"Can't go lower!","color":"green"}
execute if score maxLives Core matches ..1 if score Lang Core matches 1 run title @a subtitle "Lives count can't get any lower!"
execute if score maxLives Core matches ..1 if score Lang Core matches 2 run title @a subtitle "生命数不能再减少了!"

execute as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 9

execute if score maxLives Core matches 2.. if score Lang Core matches 1 run title @a subtitle "Lives count lowered to this length!"
execute if score maxLives Core matches 2.. if score Lang Core matches 2 run title @a subtitle "生命数减少到这个长度!"
execute if score maxLives Core matches 2.. run scoreboard players remove maxLives Core 1

execute if score maxLives Core matches 1 run title @a title {"text":"1 Life","color":"green"}
execute if score maxLives Core matches 1 run tellraw @a [{"text":"[=-=-=-= ","color":"light_purple","bold":true},{"text":"Players Get 1 Life","color":"green","bold":true},{"text":" =-=-=-=]","color":"light_purple"}]

execute if score maxLives Core matches 2 run title @a title {"text":"2 Lives","color":"green"}
execute if score maxLives Core matches 2 run tellraw @a [{"text":"[=-=-=-= ","color":"light_purple","bold":true},{"text":"Players Get 2 Lives","color":"green","bold":true},{"text":" =-=-=-=]","color":"light_purple"}]

execute if score maxLives Core matches 3 run title @a title {"text":"3 Lives","color":"green"}
execute if score maxLives Core matches 3 run tellraw @a [{"text":"[=-=-=-= ","color":"light_purple","bold":true},{"text":"Players Get 3 Lives","color":"green","bold":true},{"text":" =-=-=-=]","color":"light_purple"}]

execute if score maxLives Core matches 4 run title @a title {"text":"4 Lives","color":"green"}
execute if score maxLives Core matches 4 run tellraw @a [{"text":"[=-=-=-= ","color":"light_purple","bold":true},{"text":"Players Get 4 Lives","color":"green","bold":true},{"text":" =-=-=-=]","color":"light_purple"}]

execute if score maxLives Core matches 5 run title @a title {"text":"5 Lives","color":"green"}
execute if score maxLives Core matches 5 run tellraw @a [{"text":"[=-=-=-= ","color":"light_purple","bold":true},{"text":"Players Get 5 Lives","color":"green","bold":true},{"text":" =-=-=-=]","color":"light_purple"}]

execute if score maxLives Core matches 6 run title @a title {"text":"6 Lives","color":"green"}
execute if score maxLives Core matches 6 run tellraw @a [{"text":"[=-=-=-= ","color":"light_purple","bold":true},{"text":"Players Get 6 Lives","color":"green","bold":true},{"text":" =-=-=-=]","color":"light_purple"}]

execute if score Lang Core matches 2 run title @a title [{"score":{"name":"maxLives","objective":"Core"},"color":"green"},{"text":"条生命","color":"green"}]