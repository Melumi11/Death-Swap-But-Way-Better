$item replace entity @p[scores={permPNo=$(s)}] armor.head with carved_pumpkin[enchantments={"binding_curse":1}] 1
$execute as @p[scores={permPNo=$(s)}] run attribute @s minecraft:camera_distance base set 32.0
$tag @p[scores={permPNo=$(s)}] add pumpkin_head
$scoreboard players set @p[scores={permPNo=$(s)}] pumpkin_head 6100

$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Put a pumpkin head on ","color":"yellow"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":"'s head for 1 minute","color":"yellow"}]

execute as @s run function ds:items/after_use