function ds:prep/reset_game
scoreboard players set settingsOn Core 0
##scoreboard players set gameOn Core 1
scoreboard players set clockRunning Core 0
scoreboard players set timeRunning Core 0
scoreboard players set eliminations Core 0

scoreboard players set @a PNo 0
scoreboard players set @a justDied 0
scoreboard players reset * Lives

function ds:prep/assign_permpno
function ds:game/reset_time
setblock 0 112 7 minecraft:air

team join spectators @a[tag=!playing]

# continued
setblock -19 50 -19 minecraft:redstone_block