execute as @s at @s run forceload add ~ ~
execute as @s at @s run summon marker ~ ~ ~ {Tags:["ent","96prev"]}
gamemode spectator @s
$tp @s @p[scores={permPNo=$(s)}]
tag @s add 96spying
scoreboard players set @s 96spying 0
scoreboard players enable @s 96spying
scoreboard players set @s time96 2000
title @s title " "
$execute if score Lang Core matches 1 run title @s subtitle [{"selector":"@p[scores={permPNo=$(s)}]"},{"text":" can't see you!"}]
$execute if score Lang Core matches 2 run title @s subtitle [{"selector":"@p[scores={permPNo=$(s)}]"},{"text":" 看不到你!"}]

execute if score Lang Core matches 1 run tellraw @s [{"bold":true,"click_event":{"action":"run_command","command":"trigger 96spying"},"color":"gold","text":"\n >>> [CLICK HERE TO EXIT SPY MODE!] <<<"},{"bold":false,"color":"green","italic":true,"text":"\nOr type "},{"bold":false,"color":"yellow","italic":true,"text":"/trigger 96spying"},{"bold":false,"color":"green","italic":true,"text":" in chat to manually go back!\n"}]

execute if score Lang Core matches 2 run tellraw @s [{"bold":false,"click_event":{"action":"run_command","command":"trigger 96spying"},"color":"gold","text":"\n >>> [点击此处退出间谍模式!] <<<"},{"bold":false,"color":"green","italic":true,"text":"\n或者在聊天框中输入 "},{"bold":false,"color":"yellow","italic":true,"text":"/trigger 96spying"},{"bold":false,"color":"green","italic":true,"text":" 返回!\n"}]

## $tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Spawned ","color":"green"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":" inside of Parkour Civilization (the Youtube series)","color":"green"}]
execute as @s at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 99 1

execute as @s run function ds:items/after_use