execute as @s[predicate=ds:w] at @s run tp @s ^ ^ ^-0.3
execute as @s[predicate=ds:s] at @s run tp @s ^ ^ ^0.3
execute as @s[predicate=ds:a] at @s run tp @s ^-0.3 ^ ^
execute as @s[predicate=ds:d] at @s run tp @s ^0.3 ^ ^

execute as @s at @s unless block ~ ~ ~ minecraft:air run tp @s ~ ~1 ~