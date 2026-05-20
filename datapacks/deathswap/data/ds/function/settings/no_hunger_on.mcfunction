title @a title {"text":"Hunger: Disabled!","color":"#CF8F21"}
execute if score Lang Core matches 1 run title @a subtitle "Everyone will have saturation!"
execute if score Lang Core matches 2 run title @a subtitle "没有饥饿感 -- 每个人都会获得饱和药水效果saturation!"
execute as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 9
tellraw @a [{"text":"[=-=-=-= ","color":"light_purple","bold":true},{"text":"Hunger: Turned Off","color":"#CF8F21","bold":true},{"text":" =-=-=-=]","color":"light_purple"}]

execute if score Lang Core matches 1 run tellraw @a {"text":"Everyone will have saturation so that hunger is not an issue to worry about -- BUT it makes it harder to kill others!","color":"#CF8F21"}
execute if score Lang Core matches 2 run tellraw @a {"text":"饥饿感已禁用 -- 每个人都会拥有saturation!","color":"#CF8F21"}

scoreboard players set noHunger Core 1