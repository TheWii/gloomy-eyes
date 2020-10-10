#> thewii:gloomy_eyes/player/check/raycast

# Break
execute unless entity @s[distance=..21] run scoreboard players set #loop twvp.temp 0
execute unless block ~ ~ ~ #thewii:gloomy_eyes/raycast_through run scoreboard players set #loop twvp.temp 0

# Spawn
execute if score #loop twvp.temp matches 0 positioned ^ ^ ^-1 run function thewii:gloomy_eyes/player/check/spawn

# Loop
execute if score #loop twvp.temp matches 1 positioned ^ ^ ^0.25 run function thewii:gloomy_eyes/player/check/raycast