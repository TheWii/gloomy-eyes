#> thewii:gloomy_eyes/player/check/spawn_loop

# Summon marker entity
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["twge.marker"]}

# As marker entity
execute as @e[type=minecraft:area_effect_cloud,tag=twge.marker,limit=1] run function thewii:gloomy_eyes/player/check/spread


# Loop
scoreboard players remove $spawn_amount twvp.temp 1
execute if score $spawn_amount twvp.temp matches 1.. run function thewii:gloomy_eyes/player/check/spawn_loop