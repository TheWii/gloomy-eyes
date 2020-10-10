#> thewii:gloomy_eyes/eyes/animation/stare

# Generate staring time
scoreboard players operation #min twvp.math = #eyes.min_staring_time twge.data
scoreboard players operation #max twvp.math = #eyes.max_staring_time twge.data

function thewii:vp_library/math/lcg/ranged_rng

scoreboard players set @s twge.animation 12
scoreboard players operation @s twge.animation += #result twvp.math