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
schedule function thewii:gloomy_eyes/core/tick/20 1t
schedule function thewii:gloomy_eyes/core/tick/100 2t


# Declarations
#declare objective twvp.data
#declare objective twvp.temp
#declare objective twvp.math

#declare storage thewii:gloomy_eyes/data
#declare storage thewii:vp_library/data
#declare storage thewii:vp_library/temp

#declare tag twge.self
#declare tag twge.new_eyes
#declare tag twge.eyes
#declare tag twge.matched
#declare tag twge.haunted

#declare score_holder #eyes.looking_away_time

#declare score_holder #eyes.min_summon_amount
#declare score_holder #eyes.max_summon_amount

#declare score_holder #eyes.min_appearing_delay
#declare score_holder #eyes.max_appearing_delay

#declare score_holder #eyes.min_staring_time
#declare score_holder #eyes.max_staring_time

#declare score_holder #eyes.default_summon_chance
#declare score_holder #eyes.summon_chance_increase

#declare score_holder #eyes.summon_max_ascend