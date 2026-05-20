$execute as @p[scores={permPNo=$(s)}] at @s run fill ~-10 ~-1 ~-10 ~-2 ~8 ~10 minecraft:fire replace air
$execute as @p[scores={permPNo=$(s)}] at @s run fill ~2 ~-1 ~-10 ~10 ~8 ~10 minecraft:fire replace air
$execute as @p[scores={permPNo=$(s)}] at @s run fill ~-2 ~-1 ~-10 ~2 ~8 ~-2 minecraft:fire replace air
$execute as @p[scores={permPNo=$(s)}] at @s run fill ~-2 ~-1 ~2 ~2 ~8 ~10 minecraft:fire replace air

$execute as @p[scores={permPNo=$(s)}] at @s run fill ~-10 ~-1 ~-10 ~-2 ~8 ~10 minecraft:fire replace light
$execute as @p[scores={permPNo=$(s)}] at @s run fill ~2 ~-1 ~-10 ~10 ~8 ~10 minecraft:fire replace light
$execute as @p[scores={permPNo=$(s)}] at @s run fill ~-2 ~-1 ~-10 ~2 ~8 ~-2 minecraft:fire replace light
$execute as @p[scores={permPNo=$(s)}] at @s run fill ~-2 ~-1 ~2 ~2 ~8 ~10 minecraft:fire replace light

$execute as @p[scores={permPNo=$(s)}] at @s run fill ~-10 ~-5 ~-10 ~-2 ~8 ~10 minecraft:fire replace air
$execute as @p[scores={permPNo=$(s)}] at @s run fill ~2 ~-5 ~-10 ~10 ~8 ~10 minecraft:fire replace air
$execute as @p[scores={permPNo=$(s)}] at @s run fill ~-2 ~-5 ~-10 ~2 ~8 ~-2 minecraft:fire replace air
$execute as @p[scores={permPNo=$(s)}] at @s run fill ~-2 ~-5 ~2 ~2 ~8 ~10 minecraft:fire replace air

$execute as @p[scores={permPNo=$(s)}] at @s run fill ~-10 ~-5 ~-10 ~-2 ~-2 ~10 minecraft:fire replace light
$execute as @p[scores={permPNo=$(s)}] at @s run fill ~2 ~-5 ~-10 ~10 ~-2 ~10 minecraft:fire replace light
$execute as @p[scores={permPNo=$(s)}] at @s run fill ~-2 ~-5 ~-10 ~2 ~-2 ~-2 minecraft:fire replace light
$execute as @p[scores={permPNo=$(s)}] at @s run fill ~-2 ~-5 ~2 ~2 ~-2 ~10 minecraft:fire replace light

$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Set everything around ","color":"yellow"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":" on fire","color":"yellow"}]
execute as @s at @s run playsound minecraft:entity.blaze.shoot master @s ~ ~ ~ 9
$execute as @p[scores={permPNo=$(s)}] at @s run playsound minecraft:entity.blaze.shoot master @s ~ ~ ~ 9

execute as @s run function ds:items/after_use