$execute as @p[scores={permPNo=$(s)},tag=96spying] run function ds:items/misc/end_96spying
$execute as @p[scores={permPNo=$(s)}] at @s run summon tnt ~ ~1 ~ {fuse:85,explosion_power:4,Tags:["ent"]}
$execute if score Lang Core matches 1 run title @p[scores={permPNo=$(s)}] title {"text":"RUN away!","color":"red"}
$execute if score Lang Core matches 2 run title @p[scores={permPNo=$(s)}] title {"text":"逃跑!","color":"red"}
$execute as @p[scores={permPNo=$(s)}] at @s run playsound minecraft:entity.tnt.primed master @s ~ ~ ~ 9

$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Spawned ignited TNT on ","color":"red"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":"'s location","color":"red"}]

execute as @s run function ds:items/after_use