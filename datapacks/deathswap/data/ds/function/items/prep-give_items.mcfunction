scoreboard players add PNo Items 1
execute if score PNo Items > Players Core run scoreboard players set PNo Items 1
execute as @a[tag=playing,tag=!blockedItems] if score @s itemPNo = PNo Items run function ds:items/give_items
execute as @a[tag=playing,tag=blockedItems] if score @s itemPNo = PNo Items run tellraw @s {"text":"** Items blocked!","color":"red","bold":true}