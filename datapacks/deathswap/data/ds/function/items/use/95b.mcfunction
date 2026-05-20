$execute as @p[scores={permPNo=$(s)}] at @s run function ds:items/misc/parkour_civ
$execute as @p[scores={permPNo=$(s)}] at @s run fill ~26 -63 ~26 ~-26 -63 ~-26 minecraft:water
#$execute as @p[scores={permPNo=$(s)}] at @s run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 quartz_bricks replace air
$execute as @p[scores={permPNo=$(s)}] at @s run fill ~1 ~ ~1 ~1 ~ ~-1 minecraft:iron_bars replace air
$execute as @p[scores={permPNo=$(s)}] at @s run fill ~-1 ~ ~1 ~-1 ~ ~-1 minecraft:iron_bars replace air
$execute as @p[scores={permPNo=$(s)}] at @s run fill ~ ~ ~1 ~ ~ ~1 minecraft:iron_bars replace air
$execute as @p[scores={permPNo=$(s)}] at @s run fill ~ ~ ~-1 ~ ~ ~-1 minecraft:iron_bars replace air

$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Spawned ","color":"green"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":" inside of Parkour Civilization (the Youtube series)","color":"green"}]
$execute as @p[scores={permPNo=$(s)}] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 99 1.6
execute as @s at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 99 1.6

execute as @s run function ds:items/after_use