#> thewii:gloomy_eyes/player/check/ascend/check_height

# Decrease
scoreboard players remove #ascended twge.temp 1

# Loop
execute if score #ascended twge.temp matches 1.. if block ~ ~1 ~ #thewii:gloomy_eyes/raycast_through positioned ~ ~0.1 ~ run function thewii:gloomy_eyes/player/check/ascend/check_height