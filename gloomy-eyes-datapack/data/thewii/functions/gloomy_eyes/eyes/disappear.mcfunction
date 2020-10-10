#> thewii:gloomy_eyes/eyes/disappear

# Decrease gloomy eyes count
scoreboard players remove $gloomy_eyes twvp.temp 1

# Particles
particle minecraft:large_smoke ~ ~0.75 ~ 0.4 0.4 0.4 0.05 25 force

# Disappeared
scoreboard players set $disappeared twvp.temp 1
execute unless score #silent twvp.temp matches 1 run playsound minecraft:entity.phantom.death ambient @a ~ ~ ~ 0.25 1.5

# Kill
kill @s