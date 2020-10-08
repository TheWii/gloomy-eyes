#> thewii:gloomy_eyes/eyes/main
#execute at @s run particle smoke ~ ~ ~ 0 0 0 0 1 normal

# Increase gloomy eyes count
scoreboard players add $gloomy_eyes twge.temp 1


# Tag self
tag @s add twge.self


# Face player
execute at @s facing entity @a[tag=twge.self,limit=1] eyes run tp @s ~ ~ ~ ~ ~


# Detect player looking at this eye
scoreboard players set $facing twge.temp 0

execute if entity @s[distance=..1.25] run scoreboard players set $facing twge.temp 1
execute if entity @s[distance=..2] positioned ~ ~0.6 ~ facing entity @s eyes positioned ^ ^ ^0.1 as @a[tag=twge.self,limit=1] rotated as @s anchored feet positioned ^ ^ ^-0.1 positioned ~ ~-0.6 ~ if entity @s[distance=..0.025] run scoreboard players set $facing twge.temp 1
execute if score $facing twge.temp matches 0 if entity @s[distance=2.00001..6] positioned ~ ~0.75 ~ facing entity @s eyes positioned ^ ^ ^0.1 as @a[tag=twge.self,limit=1] rotated as @s anchored feet positioned ^ ^ ^-0.1 positioned ~ ~-0.75 ~ if entity @s[distance=..0.005] run scoreboard players set $facing twge.temp 1
execute if score $facing twge.temp matches 0 if entity @s[distance=6.00001..10] positioned ~ ~0.75 ~ facing entity @s eyes positioned ^ ^ ^0.1 as @a[tag=twge.self,limit=1] rotated as @s anchored feet positioned ^ ^ ^-0.1 positioned ~ ~-0.75 ~ if entity @s[distance=..0.004] run scoreboard players set $facing twge.temp 1
execute if score $facing twge.temp matches 0 if entity @s[distance=10.00001..14] positioned ~ ~0.75 ~ facing entity @s eyes positioned ^ ^ ^0.1 as @a[tag=twge.self,limit=1] rotated as @s anchored feet positioned ^ ^ ^-0.1 positioned ~ ~-0.75 ~ if entity @s[distance=..0.0035] run scoreboard players set $facing twge.temp 1
execute if score $facing twge.temp matches 0 if entity @s[distance=14.00001..18] positioned ~ ~0.75 ~ facing entity @s eyes positioned ^ ^ ^0.1 as @a[tag=twge.self,limit=1] rotated as @s anchored feet positioned ^ ^ ^-0.1 positioned ~ ~-0.75 ~ if entity @s[distance=..0.0025] run scoreboard players set $facing twge.temp 1
execute if score $facing twge.temp matches 0 if entity @s[distance=18.00001..22] positioned ~ ~0.75 ~ facing entity @s eyes positioned ^ ^ ^0.1 as @a[tag=twge.self,limit=1] rotated as @s anchored feet positioned ^ ^ ^-0.1 positioned ~ ~-0.75 ~ if entity @s[distance=..0.0015] run scoreboard players set $facing twge.temp 1
execute if score $facing twge.temp matches 0 if entity @s[distance=22.00001..26] positioned ~ ~0.75 ~ facing entity @s eyes positioned ^ ^ ^0.1 as @a[tag=twge.self,limit=1] rotated as @s anchored feet positioned ^ ^ ^-0.1 positioned ~ ~-0.75 ~ if entity @s[distance=..0.001] run scoreboard players set $facing twge.temp 1
execute if score $facing twge.temp matches 0 if entity @s[distance=26.00001..] positioned ~ ~0.75 ~ facing entity @s eyes positioned ^ ^ ^0.1 as @a[tag=twge.self,limit=1] rotated as @s anchored feet positioned ^ ^ ^-0.1 positioned ~ ~-0.75 ~ if entity @s[distance=..0.00075] run scoreboard players set $facing twge.temp 1

execute if score $facing twge.temp matches 1 at @s run function thewii:gloomy_eyes/eyes/disappear


# Head pose
data modify storage thewii:vp_library/temp pose set value [0.0f,0.0f,0.0f]
execute store result storage thewii:vp_library/temp pose[0] float 1 run data get entity @s Rotation[1]

data modify entity @s Pose.Head set from storage thewii:vp_library/temp pose


# Remove tag from self
tag @s remove twge.self