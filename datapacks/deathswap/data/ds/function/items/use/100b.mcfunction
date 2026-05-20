$execute as @p[scores={permPNo=$(s)}] at @s run summon zombie ~4 ~3 ~4 {PersistenceRequired:1b,Tags:["ent"],Passengers:[{id:"minecraft:giant",Tags:["ent"]}],equipment:{head:{id:"minecraft:leather_helmet",count:1}}}

$execute as @p[scores={permPNo=$(s)}] at @s run summon zombie ~-5 ~4 ~-5 {Tags:["ent"],equipment:{head:{id:"minecraft:leather_helmet",count:1}},attributes:[{id:"minecraft:scale",base:16}]}

effect clear @a minecraft:night_vision

$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Summoned a Giant zombie on ","color":"green"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":"'s location","color":"green"}]
$execute as @p[scores={permPNo=$(s)}] at @s run playsound minecraft:block.stone.break master @s ~ ~ ~ 99

execute as @s run function ds:items/after_use