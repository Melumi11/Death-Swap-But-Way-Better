# ======================== General/Core ==========================
forceload add 20 20 -20 -20
execute store result score Players Core if entity @a[tag=playing,tag=!game_crashed]
execute if score gameOn Core matches 0 run gamemode adventure @a[gamemode=survival,scores={good=1}]
execute if score gameOn Core matches 1 run gamemode survival @a[gamemode=adventure,scores={good=1}]

execute as @a at @s store result score @s Xcoord run data get entity @s Pos[0] 1
execute as @a at @s store result score @s Ycoord run data get entity @s Pos[1] 1
execute as @a at @s store result score @s Zcoord run data get entity @s Pos[2] 1

# hunger
execute if score noHunger Core matches 1 run effect give @a[scores={hunger=..17}] minecraft:saturation 1 5 true
execute if score gameOn Core matches 0 run effect give @a[scores={hunger=..18}] minecraft:saturation 1 5 true

execute if score clockRunning Core matches 1 run function ds:game/clock
execute unless score Lang Core matches 1..2 run scoreboard players set Lang Core 1

# ===== good system
execute as @a unless score @s good matches 1.. run scoreboard players set @s good 2
gamemode adventure @a[scores={good=2}]
tag @a[scores={good=2}] add playing
team join Players @a[scores={good=2}]
tp @a[scores={good=2}] 0 111 0 0 0
scoreboard players set @a[scores={good=2}] PNo 0
scoreboard players set @a[scores={good=2}] Wins 0
scoreboard players set @a[scores={good=2}] permPNo 0
scoreboard players set @a[scores={good=2}] itemPNo 0
scoreboard players set @a[gamemode=adventure,team=Players,tag=playing,scores={good=2,PNo=0,itemPNo=0,permPNo=0,Wins=0},x=0,y=111,z=0,distance=..2] good 1

execute as @a[tag=playing,scores={good=1},x=0,y=111,z=0,distance=..2] if score gameOn Core matches 1 run function ds:extra/make_newbie_spec

# === start game button
execute if score gameOn Core matches 0 if block 0 112 7 #minecraft:buttons[powered=true] run function ds:extra/start_game_button


#Checking for item violations
execute as @a[tag=playing,tag=!has_new_dye] if score gameOn Core matches 1 unless items entity @s hotbar.6 *[custom_data={deathswapitem:true}] at @s run function ds:inventory/resetitems
execute as @a[tag=playing,tag=!has_new_dye] if score gameOn Core matches 1 unless items entity @s hotbar.7 *[custom_data={deathswapitem:true}] at @s run function ds:inventory/resetitems
execute as @a[tag=playing,tag=!has_new_dye] if score gameOn Core matches 1 unless items entity @s hotbar.8 *[custom_data={deathswapitem:true}] at @s run function ds:inventory/resetitems