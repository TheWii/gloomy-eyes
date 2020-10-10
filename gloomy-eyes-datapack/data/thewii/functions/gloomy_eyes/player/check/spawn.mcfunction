#> thewii:gloomy_eyes/player/check/spawn

# Generate eyes amount
scoreboard players operation #min twvp.math = #eyes.min_summon_amount twge.data
scoreboard players operation #max twvp.math = #eyes.max_summon_amount twge.data

function thewii:vp_library/math/lcg/ranged_rng
scoreboard players operation $spawn_amount twvp.temp = #result twvp.math

# DEBUG Expected spawn amount
#tellraw @a ["Starting spawning loop. Expected spawns: ",{"score":{"name":"$spawn_amount","objective": "twvp.temp"}}]


# Call looping function
execute if score $spawn_amount twvp.temp matches 1.. run function thewii:gloomy_eyes/player/check/spawn_loop

# DEBUG Successfuly spawn amount
#tellraw @a ["Successfuly spawn amount: ",{"score":{"name":"#success_summons","objective": "twvp.temp"}}]