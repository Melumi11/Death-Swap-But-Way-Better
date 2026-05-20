$execute as @p[scores={permPNo=$(s)}] at @s run fill ~7 -63 ~10 ~-8 -63 ~-5 minecraft:water
$execute as @p[scores={permPNo=$(s)}] at @s run fill ~7 -62 ~10 ~-8 -1 ~-5 minecraft:air
$execute as @p[scores={permPNo=$(s)}] at @s run fill ~7 0 ~10 ~-8 64 ~-5 minecraft:air
$execute as @p[scores={permPNo=$(s)}] at @s run fill ~7 65 ~10 ~-8 127 ~-5 minecraft:air
$execute as @p[scores={permPNo=$(s)}] at @s run fill ~7 128 ~10 ~-8 192 ~-5 minecraft:air
$execute as @p[scores={permPNo=$(s)}] at @s run fill ~7 193 ~10 ~-8 256 ~-5 minecraft:air
$execute as @p[scores={permPNo=$(s)}] at @s run fill ~7 257 ~10 ~-8 318 ~-5 minecraft:air
$execute as @p[scores={permPNo=$(s)}] at @s run fill ~7 319 ~10 ~-8 319 ~-5 minecraft:air

effect clear @a minecraft:night_vision

$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Deleted the chunk ","color":"light_purple"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":" is standing in","color":"light_purple"}]
$execute as @p[scores={permPNo=$(s)}] at @s run playsound minecraft:block.glass.break master @s ~ ~ ~ 99 0.85

execute as @s run function ds:items/after_use