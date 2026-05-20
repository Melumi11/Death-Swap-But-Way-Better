$execute as @p[scores={permPNo=$(s)}] at @s if score @s Ycoord matches -54..295 run function ds:items/misc/quartz_pillars {ly:"~-10",uy:"~24",r:"replace #minecraft:pillars_blocks"}
$execute as @p[scores={permPNo=$(s)}] at @s if score @s Ycoord matches ..-55 run function ds:items/misc/quartz_pillars {ly:"-63",uy:"~24",r:"replace #minecraft:pillars_blocks"}
$execute as @p[scores={permPNo=$(s)}] at @s if score @s Ycoord matches 296.. run function ds:items/misc/quartz_pillars {ly:"~-10",uy:"319",r:"replace #minecraft:pillars_blocks"}

$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Built a Quartz maze around ","color":"white"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":"'s location","color":"white"}]
$execute as @p[scores={permPNo=$(s)}] at @s run playsound minecraft:block.gravel.break master @s ~ ~ ~ 99
execute as @s at @s run playsound minecraft:block.gravel.break master @s ~ ~ ~ 99

execute as @s run function ds:items/after_use