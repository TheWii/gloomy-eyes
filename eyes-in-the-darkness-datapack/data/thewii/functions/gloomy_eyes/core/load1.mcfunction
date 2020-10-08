#> thewii:gloomy_eyes/core/load1

# Datapack version
scoreboard players set $gloomy_eyes thewii.load 000100


# Install
execute unless data storage thewii:gloomy_eyes/data installed run function thewii:gloomy_eyes/core/install


# Update
execute store result score $version.merged twge.data run data get storage thewii:gloomy_eyes/data version.merged
execute if score $gloomy_eyes thewii.load > $version.merged twge.data run function thewii:gloomy_eyes/core/update


# Clear temporary storage
function thewii:gloomy_eyes/core/clear_storage


# Declarations
#declare storage thewii:gloomy_eyes/data
#declare storage thewii:gloomy_eyes/temp

#declare tag twge.new_eyes
#declare tag twge.eyes
#declare tag twge.matched
#declare tag twge.haunted