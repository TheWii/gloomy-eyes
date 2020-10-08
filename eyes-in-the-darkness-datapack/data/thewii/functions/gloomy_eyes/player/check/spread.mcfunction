#> thewii:gloomy_eyes/player/check/spread

# Summon mark entity
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["twge.mark"]}

# As mark entity
execute as @e[type=minecraft:area_effect_cloud,tag=twge.mark,limit=1] run function thewii:gloomy_eyes/player/check/spread2