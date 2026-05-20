$tp @s @p[scores={permPNo=$(s)}]
# gamerule pvp true

$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Teleported to ","color":"light_purple"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":" ","color":"light_purple"}]
execute as @s at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 99 2
#$execute as @p[scores={permPNo=$(s)}] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 99 2

# tellraw @a {"text":">>> PvP TURNED ON!!! <<<","color":"red","bold":true}

execute as @s run function ds:items/after_use