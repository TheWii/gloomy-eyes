#> thewii:gloomy_eyes/eyes/check_disappearing

# Check distance
execute if entity @s[distance=26.00001..] run scoreboard players set $distance twge.temp 8
execute if entity @s[distance=22.00001..26] run scoreboard players set $distance twge.temp 7
execute if entity @s[distance=18.00001..22] run scoreboard players set $distance twge.temp 6
execute if entity @s[distance=14.00001..18] run scoreboard players set $distance twge.temp 5
execute if entity @s[distance=10.00001..14] run scoreboard players set $distance twge.temp 4
execute if entity @s[distance=6.00001..10] run scoreboard players set $distance twge.temp 3
execute if entity @s[distance=2.00001..6] run scoreboard players set $distance twge.temp 2
execute if entity @s[distance=..2] run scoreboard players set $distance twge.temp 1
execute if entity @s[distance=..0.5] run scoreboard players set $distance twge.temp 0


# Check if player is looking at the eye(or is standing in the same space)
scoreboard players set $facing twge.temp 0

execute if score $distance twge.temp matches 0 run scoreboard players set $facing twge.temp 1
execute if score $facing twge.temp matches 0 if score $distance twge.temp matches 1 positioned ~ ~0.75 ~ facing entity @s eyes positioned ^ ^ ^0.1 as @a[tag=twge.self,limit=1] rotated as @s anchored feet positioned ^ ^ ^-0.1 positioned ~ ~-0.75 ~ if entity @s[distance=..0.025] run scoreboard players set $facing twge.temp 1
execute if score $facing twge.temp matches 0 if score $distance twge.temp matches 2 positioned ~ ~0.75 ~ facing entity @s eyes positioned ^ ^ ^0.1 as @a[tag=twge.self,limit=1] rotated as @s anchored feet positioned ^ ^ ^-0.1 positioned ~ ~-0.75 ~ if entity @s[distance=..0.005] run scoreboard players set $facing twge.temp 1
execute if score $facing twge.temp matches 0 if score $distance twge.temp matches 3 positioned ~ ~0.75 ~ facing entity @s eyes positioned ^ ^ ^0.1 as @a[tag=twge.self,limit=1] rotated as @s anchored feet positioned ^ ^ ^-0.1 positioned ~ ~-0.75 ~ if entity @s[distance=..0.004] run scoreboard players set $facing twge.temp 1
execute if score $facing twge.temp matches 0 if score $distance twge.temp matches 4 positioned ~ ~0.75 ~ facing entity @s eyes positioned ^ ^ ^0.1 as @a[tag=twge.self,limit=1] rotated as @s anchored feet positioned ^ ^ ^-0.1 positioned ~ ~-0.75 ~ if entity @s[distance=..0.0035] run scoreboard players set $facing twge.temp 1
execute if score $facing twge.temp matches 0 if score $distance twge.temp matches 5 positioned ~ ~0.75 ~ facing entity @s eyes positioned ^ ^ ^0.1 as @a[tag=twge.self,limit=1] rotated as @s anchored feet positioned ^ ^ ^-0.1 positioned ~ ~-0.75 ~ if entity @s[distance=..0.0025] run scoreboard players set $facing twge.temp 1
execute if score $facing twge.temp matches 0 if score $distance twge.temp matches 6 positioned ~ ~0.75 ~ facing entity @s eyes positioned ^ ^ ^0.1 as @a[tag=twge.self,limit=1] rotated as @s anchored feet positioned ^ ^ ^-0.1 positioned ~ ~-0.75 ~ if entity @s[distance=..0.0015] run scoreboard players set $facing twge.temp 1
execute if score $facing twge.temp matches 0 if score $distance twge.temp matches 7 positioned ~ ~0.75 ~ facing entity @s eyes positioned ^ ^ ^0.1 as @a[tag=twge.self,limit=1] rotated as @s anchored feet positioned ^ ^ ^-0.1 positioned ~ ~-0.75 ~ if entity @s[distance=..0.001] run scoreboard players set $facing twge.temp 1
execute if score $facing twge.temp matches 0 if score $distance twge.temp matches 8 positioned ~ ~0.75 ~ facing entity @s eyes positioned ^ ^ ^0.1 as @a[tag=twge.self,limit=1] rotated as @s anchored feet positioned ^ ^ ^-0.1 positioned ~ ~-0.75 ~ if entity @s[distance=..0.00075] run scoreboard players set $facing twge.temp 1

## If max light disappear immediately
execute at @s unless predicate thewii:gloomy_eyes/max_light run scoreboard players set $facing twge.temp 1


## Disappear if true
execute if score $facing twge.temp matches 1 at @s run function thewii:gloomy_eyes/eyes/disappear


# Check if player is looking away
scoreboard players set $look_away twge.temp 0

execute if score $distance twge.temp matches 0 run scoreboard players set $facing twge.temp 1
execute if score $look_away twge.temp matches 0 if score $distance twge.temp matches 1 positioned ~ ~0.75 ~ facing entity @s eyes positioned ^ ^ ^0.1 as @a[tag=twge.self,limit=1] rotated as @s anchored feet positioned ^ ^ ^-0.1 positioned ~ ~-0.75 ~ unless entity @s[distance=..0.175] run scoreboard players set $look_away twge.temp 1
execute if score $look_away twge.temp matches 0 if score $distance twge.temp matches 2 positioned ~ ~0.75 ~ facing entity @s eyes positioned ^ ^ ^0.1 as @a[tag=twge.self,limit=1] rotated as @s anchored feet positioned ^ ^ ^-0.1 positioned ~ ~-0.75 ~ unless entity @s[distance=..0.1625] run scoreboard players set $look_away twge.temp 1
execute if score $look_away twge.temp matches 0 if score $distance twge.temp matches 3 positioned ~ ~0.75 ~ facing entity @s eyes positioned ^ ^ ^0.1 as @a[tag=twge.self,limit=1] rotated as @s anchored feet positioned ^ ^ ^-0.1 positioned ~ ~-0.75 ~ unless entity @s[distance=..0.15] run scoreboard players set $look_away twge.temp 1
execute if score $look_away twge.temp matches 0 if score $distance twge.temp matches 4 positioned ~ ~0.75 ~ facing entity @s eyes positioned ^ ^ ^0.1 as @a[tag=twge.self,limit=1] rotated as @s anchored feet positioned ^ ^ ^-0.1 positioned ~ ~-0.75 ~ unless entity @s[distance=..0.1475] run scoreboard players set $look_away twge.temp 1
execute if score $look_away twge.temp matches 0 if score $distance twge.temp matches 5 positioned ~ ~0.75 ~ facing entity @s eyes positioned ^ ^ ^0.1 as @a[tag=twge.self,limit=1] rotated as @s anchored feet positioned ^ ^ ^-0.1 positioned ~ ~-0.75 ~ unless entity @s[distance=..0.145] run scoreboard players set $look_away twge.temp 1
execute if score $look_away twge.temp matches 0 if score $distance twge.temp matches 6 positioned ~ ~0.75 ~ facing entity @s eyes positioned ^ ^ ^0.1 as @a[tag=twge.self,limit=1] rotated as @s anchored feet positioned ^ ^ ^-0.1 positioned ~ ~-0.75 ~ unless entity @s[distance=..0.145] run scoreboard players set $look_away twge.temp 1
execute if score $look_away twge.temp matches 0 if score $distance twge.temp matches 7 positioned ~ ~0.75 ~ facing entity @s eyes positioned ^ ^ ^0.1 as @a[tag=twge.self,limit=1] rotated as @s anchored feet positioned ^ ^ ^-0.1 positioned ~ ~-0.75 ~ unless entity @s[distance=..0.145] run scoreboard players set $look_away twge.temp 1
execute if score $look_away twge.temp matches 0 if score $distance twge.temp matches 8 positioned ~ ~0.75 ~ facing entity @s eyes positioned ^ ^ ^0.1 as @a[tag=twge.self,limit=1] rotated as @s anchored feet positioned ^ ^ ^-0.1 positioned ~ ~-0.75 ~ unless entity @s[distance=..0.145] run scoreboard players set $look_away twge.temp 1

execute if score $look_away twge.temp matches 1 run function thewii:gloomy_eyes/eyes/haunt/main
execute if score $look_away twge.temp matches 0 if score @s twge.haunt matches 1.. run function thewii:gloomy_eyes/eyes/haunt/cancel
