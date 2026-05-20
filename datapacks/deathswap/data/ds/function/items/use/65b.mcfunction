$execute as @p[scores={permPNo=$(s)}] at @s run function ds:extra/all_to_stone {c:"fill ~12 ~6 ~12 ~-12 ~-1 ~-12 minecraft:water replace #minecraft:"}

$execute as @p[scores={permPNo=$(s)}] at @s run function ds:extra/all_to_stone {c:"fill ~12 ~-2 ~12 ~-12 ~-6 ~-12 minecraft:water replace #minecraft:"}

$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Liquidated all blocks near ","color":"aqua"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":" into water","color":"aqua"}]
$execute as @p[scores={permPNo=$(s)}] at @s run playsound minecraft:entity.player.splash master @s ~ ~ ~ 9

execute as @s run function ds:items/after_use