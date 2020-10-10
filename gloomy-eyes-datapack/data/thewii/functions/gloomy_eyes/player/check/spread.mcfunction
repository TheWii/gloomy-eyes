#> thewii:gloomy_eyes/player/check/spread

# Spread entity
execute store result score #height twvp.temp run data get entity @s Pos[1]
scoreboard players add #height twvp.temp 5

function thewii:gloomy_eyes/general/entity/spread/start


# Check height
scoreboard players operation #ascended twvp.temp = #eyes.summon_max_ascend twge.data
execute at @s run function thewii:gloomy_eyes/player/check/ascend/check_height


# Generate ascending height
scoreboard players set #min twvp.math 0

scoreboard players operation #max twvp.math = #eyes.summon_max_ascend twge.data
scoreboard players operation #max twvp.math -= #ascended twvp.temp

function thewii:vp_library/math/lcg/ranged_rng

scoreboard players operation #height twvp.temp = #result twvp.math


# DEBUG Ascending height
#tellraw @p ["Ascending: ",{"score":{"name":"#height","objective":"twvp.temp"}}]


# Teleport
execute at @s run function thewii:gloomy_eyes/player/check/ascend/tp_16

# Kill marker AEC
kill @s