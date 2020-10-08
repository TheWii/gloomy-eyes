#> thewii:gloomy_eyes/core/version

# Reset scores
scoreboard players set $version.merged twge.data 0
scoreboard players set $version.major twge.data 0
scoreboard players set $version.minor twge.data 0
scoreboard players set $version.patch twge.data 0


# Merged 010203
scoreboard players operation $version.merged twge.data = $gloomy_eyes thewii.load

# Major 01XXXX
scoreboard players operation $version.major twge.data = $gloomy_eyes thewii.load
scoreboard players operation $version.major twge.data /= #10000 twvp.math

# Minor XX02XX
scoreboard players operation $version.minor twge.data = $gloomy_eyes thewii.load
scoreboard players operation $version.minor twge.data /= #100 twvp.math
scoreboard players operation $version.minor twge.data %= #100 twvp.math

# Patch XXXX03
scoreboard players operation $version.patch twge.data = $gloomy_eyes thewii.load
scoreboard players operation $version.patch twge.data %= #100 twvp.math


# Store integers to storage
execute store result storage thewii:gloomy_eyes/data version.merged int 1 run scoreboard players get $version.merged twge.data
execute store result storage thewii:gloomy_eyes/data version.major int 1 run scoreboard players get $version.major twge.data
execute store result storage thewii:gloomy_eyes/data version.minor int 1 run scoreboard players get $version.minor twge.data
execute store result storage thewii:gloomy_eyes/data version.patch int 1 run scoreboard players get $version.patch twge.data
