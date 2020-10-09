#> thewii:gloomy_eyes/player/check/ascend/tp_16

# Success
execute store success score #success twge.temp if score #height twge.temp matches 16..

# Skip
execute if score #success twge.temp matches 0 run function thewii:gloomy_eyes/player/check/ascend/tp_8

# Teleport and repeat
execute if score #success twge.temp matches 1 run scoreboard players remove #height twge.temp 16
execute if score #success twge.temp matches 1 run tp @s ~ ~1.6 ~
execute if score #success twge.temp matches 1 at @s run function thewii:gloomy_eyes/player/check/ascend/tp_16