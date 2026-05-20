$execute as @p[scores={permPNo=$(s)}] at @s run fill ~10 ~-1 ~6 ~-10 ~-1 ~-6 minecraft:bedrock
$execute as @p[scores={permPNo=$(s)}] at @s run fill ~10 ~2 ~6 ~-10 ~2 ~-6 minecraft:bedrock

$execute as @p[scores={permPNo=$(s)}] at @s run fill ~10 ~ ~6 ~-10 ~ ~6 minecraft:obsidian
$execute as @p[scores={permPNo=$(s)}] at @s run fill ~10 ~ ~-6 ~-10 ~ ~-6 minecraft:obsidian
$execute as @p[scores={permPNo=$(s)}] at @s run fill ~10 ~ ~6 ~10 ~ ~-6 minecraft:obsidian
$execute as @p[scores={permPNo=$(s)}] at @s run fill ~-10 ~ ~6 ~-10 ~ ~-6 minecraft:obsidian
$execute as @p[scores={permPNo=$(s)}] at @s run fill ~10 ~1 ~6 ~-10 ~1 ~6 minecraft:crying_obsidian
$execute as @p[scores={permPNo=$(s)}] at @s run fill ~10 ~1 ~-6 ~-10 ~1 ~-6 minecraft:crying_obsidian
$execute as @p[scores={permPNo=$(s)}] at @s run fill ~10 ~1 ~6 ~10 ~1 ~-6 minecraft:crying_obsidian
$execute as @p[scores={permPNo=$(s)}] at @s run fill ~-10 ~1 ~6 ~-10 ~1 ~-6 minecraft:crying_obsidian
$execute as @p[scores={permPNo=$(s)}] at @s run setblock ~ ~ ~ minecraft:torch

$execute as @p[scores={permPNo=$(s)}] at @s run setblock ~2 ~ ~1 chest{Items:[{Slot:13b,id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:damage":1500}}]} replace

$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Trapped ","color":"red"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":" inside of a prison","color":"red"}]
execute as @a at @s run playsound minecraft:entity.ghast.scream master @s ~ ~ ~ 9

execute as @s run function ds:items/after_use