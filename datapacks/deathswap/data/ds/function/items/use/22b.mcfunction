$execute as @p[scores={permPNo=$(s)}] at @s run function ds:extra/all_to_stone {c:"fill ~12 ~6 ~12 ~-12 ~-6 ~-12 minecraft:stone replace #minecraft:"}

$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Changed all blocks near ","color":"white"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":" to stone","color":"white"}]
execute as @a at @s run playsound minecraft:block.stone.break master @s ~ ~ ~ 99

execute as @s run function ds:items/after_use