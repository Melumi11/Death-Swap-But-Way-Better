$execute as @p[scores={permPNo=$(s)},tag=96spying] run function ds:items/misc/end_96spying
$execute as @p[scores={permPNo=$(s)}] run tag @s add game_crashed
$tag @p[scores={permPNo=$(s)}] add immune_to_swap
$tag @p[scores={permPNo=$(s)}] add Shield
$execute if score Lang Core matches 1 run title @p[scores={permPNo=$(s)}] title {"text":">>> WARNING!! <<<","color":"red","bold":true}
$execute if score Lang Core matches 1 run title @p[scores={permPNo=$(s)}] subtitle {"text":"Your game will CRASH in 5 seconds!!!","color":"red","bold":false}
$execute if score Lang Core matches 1 run tellraw @p[scores={permPNo=$(s)}] [{"text":"\n>>> WARNING: YOUR MINECRAFT GAME WILL CRASH IN 5 SECONDS!!! <<<","color":"red","bold":true},{"text":"\nIf you cannot rejoin from the title screen, close out of Minecraft and then re-join.\n","color":"red","bold":false}]

$execute if score Lang Core matches 2 run title @p[scores={permPNo=$(s)}] title {"text":">>> 一个警告!! <<<","color":"red","bold":true}
$execute if score Lang Core matches 2 run title @p[scores={permPNo=$(s)}] subtitle {"text":"您的游戏将在 5 秒后崩溃!!!","color":"red","bold":false}
$execute if score Lang Core matches 2 run tellraw @p[scores={permPNo=$(s)}] [{"text":"\n>>> 警告：您的 MINECRAFT 游戏将在 5 秒后崩溃!!! <<<","color":"red","bold":true},{"text":"\n如果您无法从标题画面重新加入游戏，请关闭 Minecraft，然后重新启动游戏并加入.\n","color":"red","bold":false}]

scoreboard players set someoneCrashed Core 1
scoreboard players set waitForCrashPlayer Core 0
setblock 18 50 19 minecraft:redstone_block

$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Will crash ","color":"yellow"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":"'s Minecraft game","color":"yellow"}]
$execute as @p[scores={permPNo=$(s)}] at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 9
execute as @s at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 9

schedule function ds:items/misc/crash_game 5s
execute as @s run function ds:items/after_use