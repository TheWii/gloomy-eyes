#> thewii:gloomy_eyes/core/load2

# Datapack version
scoreboard players set $gloomy_eyes thewii.load 000100


# Install
execute unless data storage thewii:gloomy_eyes/data installed run function thewii:gloomy_eyes/core/install


# Update
execute store result score $version.merged twge.data run data get storage thewii:gloomy_eyes/data version.merged
execute if score $gloomy_eyes thewii.load > $version.merged twge.data run function thewii:gloomy_eyes/core/update


# Load config
function thewii:gloomy_eyes/core/load_config


# Confirm if Vanilla+ Library modules are installed
execute unless data storage thewii:vp_library/data modules.math run function thewii:vp_library/math/add


# Clear temporary storage
function thewii:gloomy_eyes/core/clear_storage


# Schedules
schedule function thewii:gloomy_eyes/core/tick/20 20t
schedule function thewii:gloomy_eyes/core/tick/100 100t


# Declarations
#declare objective twvp.data
#declare objective twvp.temp
#declare objective twvp.math

#declare storage thewii:gloomy_eyes/data
#declare storage thewii:gloomy_eyes/temp

#declare tag twge.new_eyes
#declare tag twge.eyes
#declare tag twge.matched
#declare tag twge.haunted