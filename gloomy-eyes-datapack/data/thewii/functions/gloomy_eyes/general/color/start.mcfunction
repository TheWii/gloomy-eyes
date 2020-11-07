#> thewii:gloomy_eyes/general/color/start

# Generate HSV

## Hue
scoreboard players set #min twvp.math 0
scoreboard players set #max twvp.math 360
function thewii:vp_library/math/lcg/ranged_rng
scoreboard players operation #hsv.h twvp.temp = #result twvp.math

## Saturation
scoreboard players set #hsv.s twvp.temp 100

## Vibrance
scoreboard players set #hsv.v twvp.temp 100


# Region
scoreboard players operation #region twvp.temp = #hsv.h twvp.temp
scoreboard players operation #region twvp.temp /= #43 twvp.math


# Remainder
scoreboard players operation #remainder twvp.temp = #hsv.h twvp.temp
scoreboard players operation #remainder twvp.temp %= #43 twvp.math
scoreboard players operation #remainder twvp.temp *= #6 twvp.math


# Switch
execute if score #region twvp.temp matches 0 run function thewii:gloomy_eyes/general/color/case_0
execute if score #region twvp.temp matches 1 run function thewii:gloomy_eyes/general/color/case_1
execute if score #region twvp.temp matches 2 run function thewii:gloomy_eyes/general/color/case_2
execute if score #region twvp.temp matches 3 run function thewii:gloomy_eyes/general/color/case_3
execute if score #region twvp.temp matches 4 run function thewii:gloomy_eyes/general/color/case_4
execute unless score #region twvp.temp matches 0..4 run function thewii:gloomy_eyes/general/color/case_default


# Return
scoreboard players operation #result twvp.math = #rgb.red twvp.temp
scoreboard players operation #result twvp.math *= #255 twvp.math
scoreboard players operation #result twvp.math += #rgb.green twvp.temp
scoreboard players operation #result twvp.math *= #255 twvp.math
scoreboard players operation #result twvp.math += #rgb.blue twvp.temp

# DEBUG Hue to RGB
#tellraw @a ["Hue: ",{"score":{"name":"#hsv.h","objective":"twvp.temp"}},", RGB: ",{"score":{"name":"#rgb.red","objective":"twvp.temp"}}," ",{"score":{"name":"#rgb.green","objective":"twvp.temp"}}," ",{"score":{"name":"#rgb.blue","objective":"twvp.temp"}},", Int: ",{"score":{"name":"#result","objective":"twvp.math"}}]