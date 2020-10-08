#> thewii:gloomy_eyes/eyes/appear2

# Set id
scoreboard players operation @s twge.id = #id twge.temp


# Appearing delay
scoreboard players operation #min twvp.math = #eye.min_appearing_delay twge.data
scoreboard players operation #max twvp.math = #eye.max_appearing_delay twge.data

function thewii:vp_library/math/lcg/ranged_rng

scoreboard players operation @s twge.animation = #result twvp.math
scoreboard players operation @s twge.animation *= #-1 twvp.math


# Remove tag
tag @s remove twge.new_eyes
