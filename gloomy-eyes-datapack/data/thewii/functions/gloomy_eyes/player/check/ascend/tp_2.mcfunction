#> thewii:gloomy_eyes/player/check/ascend/tp_2

# Success
execute store success score #success twvp.temp if score #height twvp.temp matches 2..

# Skip
execute if score #success twvp.temp matches 0 run function thewii:gloomy_eyes/player/check/ascend/tp_1

# Teleport and repeat
execute if score #success twvp.temp matches 1 run scoreboard players remove #height twvp.temp 2
execute if score #success twvp.temp matches 1 run tp @s ~ ~0.2 ~
execute if score #success twvp.temp matches 1 at @s run function thewii:gloomy_eyes/player/check/ascend/tp_2