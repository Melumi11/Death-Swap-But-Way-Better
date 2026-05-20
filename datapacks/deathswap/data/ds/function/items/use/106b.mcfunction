$execute as @p[scores={permPNo=$(s)}] run function ds:items/misc/106store_coords {p:$(s)}

$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Teleported ","color":"red"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":" directly to the Nether","color":"red"}]

execute as @s run function ds:items/after_use