execute as @s run function ds:items/use/all
give @s diamond_shovel[enchantments={"efficiency":5},custom_name={"bold":true,"color":"aqua","italic":true,"text":"Super-fast shovel"},lore=["To use against the classic falling sand/gravel trap"]] 1

tellraw @s {"text":">> You now have a shovel that can break blocks super quickly -- best not to tell anyone about it! <<","color":"aqua"}
execute as @s at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 9

execute as @s run function ds:items/after_use