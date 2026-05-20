execute as @s run function ds:items/use/all
#title @s title "Look down!"

#execute as @s at @s if score Lang Core matches 1 run setblock ~ ~ ~ chest{Items:[{Slot:13b,id:"minecraft:diamond_sword",count:1,components:{"minecraft:enchantments":{"sharpness":5},"minecraft:custom_name":{"bold":true,"color":"aqua","text":"One-hit-kill - ONE USE!"},"minecraft:attribute_modifiers":[{id:"attack_damage",type:"attack_damage",amount:2550,operation:"add_value",slot:"hand"}],"minecraft:damage":1559}}]} replace

#execute as @s at @s if score Lang Core matches 2 run setblock ~ ~ ~ chest{Items:[{Slot:13b,id:"minecraft:diamond_sword",count:1,components:{"minecraft:enchantments":{"sharpness":5},"minecraft:custom_name":{"bold":true,"color":"aqua","text":"一击必杀 & 还剩一次使用机会!"},"minecraft:attribute_modifiers":[{id:"attack_damage",type:"attack_damage",amount:2550,operation:"add_value",slot:"hand"}],"minecraft:damage":1559}}]} replace

# SWORD:
give @s diamond_sword[damage=1560,custom_name={"bold":true,"color":"aqua","text":"One-hit-kill -- ONE USE!"},enchantments={"fire_aspect":1,"knockback":2,"looting":3,"sharpness":5},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:999999,operation:"add_value"}]] 1

execute if score Lang Core matches 1 run tellraw @s [{"text":">> You got a one-hit-kill sword! It has only ONE use left of durability!","color":"aqua"}]
execute if score Lang Core matches 2 run tellraw @s [{"text":">> 你得到了一把一击必杀的剑! 它的耐久度只剩下一次使用次数了!","color":"aqua"}]
execute as @s at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 9

execute as @s run function ds:items/after_use