$execute as @p[scores={permPNo=$(s)}] at @s run summon parched ^ ^ ^1 {Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["ent","jumpscare","jumping$(s)"]}
$execute as @p[scores={permPNo=$(s)}] at @s run rotate @e[limit=1,type=parched,tag=jumpscare,tag=jumping$(s)] facing entity @s
$tag @p[scores={permPNo=$(s)}] add jumped$(s)
$scoreboard players set @e[type=parched,tag=jumpscare,tag=jumping$(s)] jumpscared 3000

$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Jumpscared ","color":"red"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":" ","color":"white"}]
execute as @a at @s run playsound minecraft:entity.ghast.scream master @s ~ ~ ~ 9

execute as @s run function ds:items/after_use