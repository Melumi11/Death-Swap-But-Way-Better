scoreboard players set TimeM Core 0
scoreboard players set TimeS Core 0
scoreboard players set TimeT Core 0
scoreboard players set TimeM Items 0
scoreboard players set TimeS Items 0
scoreboard players set TimeT Items 0
scoreboard players set totalTimeM Core 0
scoreboard players set totalTimeS Core 0
scoreboard players set totalTimeT Core 0
scoreboard players set 55TimeS Items 0
scoreboard players set 55TimeT Items 0
scoreboard players set timeRunning Core 0
scoreboard players set clockRunning Core 0
scoreboard players set PNo Items 0
scoreboard players set isNight Core 0
scoreboard players set Difficulty Core 2
scoreboard players set someoneCrashed Core 0
scoreboard players set waitForCrashPlayer Core 0
scoreboard players set noKeepInv Core 0
scoreboard players set noNatRegen Core 0
scoreboard players set lowGrav Items 0

scoreboard players set @a PNo 0
scoreboard players set @a itemPNo 0
scoreboard players set @a permPNo 0
scoreboard players set @a justDied 0
scoreboard players set @a currItem 0
scoreboard players set @a select 0
scoreboard players set @a tp_away 0
scoreboard players set @a used_tp_cycle 0
execute as @a run trigger select set 0
execute as @a run trigger 96spying set 0
execute as @a run trigger tp_away set 0

scoreboard players set @a mega_speed 0
scoreboard players set @a jump_disabled 0
scoreboard players set @a Shield 0
scoreboard players set @a 100villagers 0
scoreboard players set @a creativeMode 0
scoreboard players set @a motion_sick 0
scoreboard players set @a bedrock_trail 0
scoreboard players set @a no_interaction 0
scoreboard players set @a many_bees 0
scoreboard players set @a keys_inverted 0
scoreboard players set @a ate_notch_apple 0
scoreboard players set @a pumpkin_head 0
scoreboard players set @a tiny_scale 0
scoreboard players set @a huge_scale 0
scoreboard players set @a nether_world 0
scoreboard players set @a blockedItems 0
scoreboard players set @a look_down 0
scoreboard players set @a Hearts 20
scoreboard players set @a specMode 0
scoreboard players set @a mine_faster 0
scoreboard players set @a no_fall_dam 0
scoreboard players set @a ears_bleed 0
scoreboard players set @a time96 0
scoreboard players set @a no_craft 0
scoreboard players set @a mob_forcefield 0
scoreboard players set @a is_peeing 0
scoreboard players set @a no_death 0
scoreboard players set @a 100enderman 0
scoreboard players reset * Lives
tag @a remove Winner
tag @a remove immune_to_swap
tag @a remove got_items
tag @a remove choosing_item
tag @a remove choosing_player
tag @a remove has_new_dye
tag @a remove Shield
tag @a remove 100villagers
tag @a remove in_creativeMode
tag @a remove motion_sick
tag @a remove bedrock_trail
tag @a remove no_interaction
tag @a remove many_bees
tag @a remove keys_inverted
tag @a remove pumpkin_head
tag @a remove tiny_scale
tag @a remove huge_scale
tag @a remove nether_world
tag @a remove blockedItems
tag @a remove got_notch_apple
tag @a remove look_down
tag @a remove 4extra_hearts
tag @a remove has8_hearts
tag @a remove minus2_hearts
tag @a remove specMode
tag @a remove game_crashed
tag @a remove mine_faster
tag @a remove no_fall_dam
tag @a remove ears_bleed
tag @a remove 96spying
tag @a remove no_craft
tag @a remove mob_forcefield
tag @a remove is_peeing
tag @a remove cant_tp_away
tag @a remove no_death
tag @a remove 100enderman
tag @a remove p1_justdied
tag @a remove p2_justdied
tag @a remove p3_justdied
tag @a remove p4_justdied
tag @a remove p5_justdied
tag @a remove p6_justdied
tag @a remove p7_justdied
tag @a remove p8_justdied
tag @a remove p9_justdied
tag @a remove p10_justdied
tag @a remove p11_justdied
tag @a remove p12_justdied

function ds:items/reset_prev_items
gamemode survival @a[gamemode=creative]

xp set @a 0 levels
execute as @a run attribute @s minecraft:entity_interaction_range base reset
execute as @a run attribute @s minecraft:block_interaction_range base reset
execute as @a run attribute @s minecraft:movement_speed base reset
execute as @a run attribute @s minecraft:jump_strength base reset
execute as @a run attribute @s minecraft:scale base reset
execute as @a run attribute @s minecraft:camera_distance base reset
execute as @a run attribute @s minecraft:max_health base reset
execute as @a run attribute @s minecraft:movement_efficiency base reset
execute as @a run attribute @s minecraft:mining_efficiency base reset
execute as @a run attribute @s minecraft:block_break_speed base reset
execute as @a run attribute @s minecraft:gravity base reset
execute as @a run attribute @s minecraft:fall_damage_multiplier base reset

data modify storage ds:hearts p.1 set value 20
data modify storage ds:hearts p.2 set value 20
data modify storage ds:hearts p.3 set value 20
data modify storage ds:hearts p.4 set value 20
data modify storage ds:hearts p.5 set value 20
data modify storage ds:hearts p.6 set value 20
data modify storage ds:hearts p.7 set value 20
data modify storage ds:hearts p.8 set value 20
data modify storage ds:hearts p.9 set value 20
data modify storage ds:hearts p.10 set value 20
data modify storage ds:hearts p.11 set value 20
data modify storage ds:hearts p.12 set value 20

time set noon
gamerule send_command_feedback false
gamerule immediate_respawn true
gamerule keep_inventory true
gamerule natural_health_regeneration true
gamerule fall_damage true
difficulty normal
clear @a
kill @e[tag=ent]