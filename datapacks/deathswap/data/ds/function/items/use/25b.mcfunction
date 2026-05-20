$tag @p[scores={permPNo=$(s)}] add bedrock_trail
$scoreboard players set @p[scores={permPNo=$(s)}] bedrock_trail 7200
$title @p[scores={permPNo=$(s)}] title " "
$title @p[scores={permPNo=$(s)}] subtitle {"text":"Look below you!","color":"white"}

$tellraw @a [{"text":">> ","color":"green"},{"selector":"@s","bold":false}," --> ",{"text":"Made ","color":"white"},{"selector":"@p[scores={permPNo=$(s)}]","bold":false},{"text":" leave behind a bedrock trail wherever they walk","color":"white"}]

execute as @s run function ds:items/after_use