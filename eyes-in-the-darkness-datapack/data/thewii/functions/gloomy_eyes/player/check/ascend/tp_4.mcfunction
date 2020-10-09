#> thewii:gloomy_eyes/player/check/ascend/tp_4

# Success
execute store success score #success twge.temp if score #height twge.temp matches 4..

# Skip
execute if score #success twge.temp matches 0 run function thewii:gloomy_eyes/player/check/ascend/tp_2

# Teleport and repeat
execute if score #success twge.temp matches 1 run scoreboard players remove #height twge.temp 4
execute if score #success twge.temp matches 1 run tp @s ~ ~0.4 ~
execute if score #success twge.temp matches 1 at @s run function thewii:gloomy_eyes/player/check/ascend/tp_4