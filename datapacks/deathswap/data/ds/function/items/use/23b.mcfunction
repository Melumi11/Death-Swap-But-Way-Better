$execute as @p[scores={permPNo=$(s)}] run item replace entity @s armor.chest with leather_chestplate[enchantments={"binding_curse":1},unbreakable={}] 1
$title @p[scores={permPNo=$(s)}] title " "
$execute if score Lang Core matches 1 run title @p[scores={permPNo=$(s)}] subtitle {"text":"Check your chestplate slot..","color":"red"}
$execute if score Lang Core matches 2 run title @p[scores={permPNo=$(s)}] subtitle {"text":"检查你的胸甲槽位...","color":"red"}

effect clear @a minecraft:night_vision

$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Put a leather tunic with curse of binding on ","color":"gold"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":"'s chestplate slot","color":"gold"}]
execute as @a at @s run playsound minecraft:block.stone.break master @s ~ ~ ~ 99

execute as @s run function ds:items/after_use