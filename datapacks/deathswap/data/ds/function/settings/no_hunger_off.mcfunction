title @a title {"text":"Hunger: Enabled!","color":"#CF8F21"}
execute if score Lang Core matches 1 run title @a subtitle "Everyone will experience hunger!"
execute if score Lang Core matches 2 run title @a subtitle "每个人都会经历饥饿!"
execute as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 9
tellraw @a [{"text":"[=-=-=-= ","color":"light_purple","bold":true},{"text":"Hunger: Turned On","color":"#CF8F21","bold":true},{"text":" =-=-=-=]","color":"light_purple"}]

execute if score Lang Core matches 1 run tellraw @a {"text":"Hunger will be an obstacle like in regular Minecraft! You will have to gather food & keep your hunger satisfied!","color":"#CF8F21"}
execute if score Lang Core matches 2 run tellraw @a {"text":"饥饿将成为一个障碍，就像在原版Minecraft中一样! 你必须收集食物并保持饥饿值充足!","color":"#CF8F21"}

scoreboard players set noHunger Core 0