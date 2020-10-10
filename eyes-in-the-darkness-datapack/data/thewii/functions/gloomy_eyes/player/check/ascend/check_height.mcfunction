#> thewii:gloomy_eyes/player/check/ascend/check_height

# Decrease
scoreboard players remove #ascended twvp.temp 1

# Loop
execute if score #ascended twvp.temp matches 1.. if block ~ ~1 ~ #thewii:gloomy_eyes/raycast_through positioned ~ ~0.1 ~ run function thewii:gloomy_eyes/player/check/ascend/check_height