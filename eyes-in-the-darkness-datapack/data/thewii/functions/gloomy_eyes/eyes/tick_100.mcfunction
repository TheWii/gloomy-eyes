#> thewii:gloomy_eyes/eyes/tick_100

# Set on fire
data modify entity @s Fire set value 10000


# Find matching player
scoreboard players set $found_player twge.temp 0

scoreboard players operation #id twge.temp = @s twge.id
execute as @a if score @s twge.id = #id twge.temp run tag @s add twge.matched


# Player found
execute if entity @a[tag=twge.matched] run scoreboard players set $found_player twge.temp 1
execute if entity @a[tag=twge.matched,distance=34..] run scoreboard players set $found_player twge.temp 0


# Disappear if player wasn't found
execute if score $found_player twvp.temp matches 0 run function thewii:gloomy_eyes/eyes/disappear


# Remove tag from player
tag @a[tag=twge.matched] remove twge.matched