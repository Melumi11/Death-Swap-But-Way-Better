$execute as @p[scores={permPNo=$(s)}] at @s run function ds:extra/all_to_stone {c:"fill ~5 ~3 ~5 ~-5 ~-2 ~-5 minecraft:obsidian replace #minecraft:"}

$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Turned all blocks near ","color":"yellow"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":" to obsidian","color":"yellow"}]
$execute as @p[scores={permPNo=$(s)}] at @s run playsound minecraft:block.stone.break master @s ~ ~ ~ 99

execute as @s run function ds:items/after_use