$execute store result storage ds:coords p$(p).x int 1 run scoreboard players get @s Xcoord
$execute store result storage ds:coords p$(p).y int 1 run scoreboard players get @s Ycoord
$execute store result storage ds:coords p$(p).z int 1 run scoreboard players get @s Zcoord

$execute as @s run function ds:items/misc/106tp_nether with storage ds:coords p$(p)