#> thewii:gloomy_eyes/eyes/appear2

# Set id
scoreboard players operation @s twge.id = #id twvp.temp


# Appearing delay
scoreboard players operation #min twvp.math = #eyes.min_appearing_delay twge.data
scoreboard players operation #max twvp.math = #eyes.max_appearing_delay twge.data

function thewii:vp_library/math/lcg/ranged_rng

scoreboard players operation @s twge.animation = #result twvp.math
scoreboard players operation @s twge.animation *= #-1 twvp.math


# Eyes color
function thewii:gloomy_eyes/general/color/start

execute store result entity @s ArmorItems[3].tag.display.color int 1 run scoreboard players get #result twvp.math

# Remove tag
tag @s remove twge.new_eyes
