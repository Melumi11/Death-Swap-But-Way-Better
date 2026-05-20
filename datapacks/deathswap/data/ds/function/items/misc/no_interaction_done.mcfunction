execute as @s run attribute @s minecraft:entity_interaction_range base reset
execute as @s run attribute @s minecraft:block_interaction_range base reset
tellraw @s {"text":"You're back in survival mode now! You can break/place blocks again!","color":"aqua"}
scoreboard players set @s no_interaction 0
gamemode survival @s
tag @s remove no_interaction