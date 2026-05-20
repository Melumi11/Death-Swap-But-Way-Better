$execute as @p[scores={permPNo=$(s)},tag=96spying] run function ds:items/misc/end_96spying

execute store result score oceanRandom Items run random value 1..14
$execute in minecraft:overworld if score oceanRandom Items matches 1 run tp @p[scores={permPNo=$(s)}] -20380498 64 -22881232
$execute in minecraft:overworld if score oceanRandom Items matches 2 run tp @p[scores={permPNo=$(s)}] 589330 64 6311587
$execute in minecraft:overworld if score oceanRandom Items matches 3 run tp @p[scores={permPNo=$(s)}] -7891432 64 608764
$execute in minecraft:overworld if score oceanRandom Items matches 4 run tp @p[scores={permPNo=$(s)}] 169416 64 -8009858
$execute in minecraft:overworld if score oceanRandom Items matches 5 run tp @p[scores={permPNo=$(s)}] 75652 64 -8358384
$execute in minecraft:overworld if score oceanRandom Items matches 6 run tp @p[scores={permPNo=$(s)}] -9885188 64 75470
$execute in minecraft:overworld if score oceanRandom Items matches 7 run tp @p[scores={permPNo=$(s)}] 61798 64 3456189
$execute in minecraft:overworld if score oceanRandom Items matches 8 run tp @p[scores={permPNo=$(s)}] -8905275 64 461738
$execute in minecraft:overworld if score oceanRandom Items matches 9 run tp @p[scores={permPNo=$(s)}] 1999709 64 -4887449
$execute in minecraft:overworld if score oceanRandom Items matches 10 run tp @p[scores={permPNo=$(s)}] -6077095 64 3556330
$execute in minecraft:overworld if score oceanRandom Items matches 11 run tp @p[scores={permPNo=$(s)}] 17969202 64 11749377
$execute in minecraft:overworld if score oceanRandom Items matches 12 run tp @p[scores={permPNo=$(s)}] -17958884 64 -11734663
$execute in minecraft:overworld if score oceanRandom Items matches 13 run tp @p[scores={permPNo=$(s)}] -13862972 64 7667282
$execute in minecraft:overworld if score oceanRandom Items matches 14 run tp @p[scores={permPNo=$(s)}] -25250321 64 -22587914

$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Teleported ","color":"blue"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":" to the middle of an ocean","color":"aqua"}]
execute as @a at @s run playsound minecraft:entity.player.splash master @s ~ ~ ~ 9

execute as @s run function ds:items/after_use