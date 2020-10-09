#> thewii:gloomy_eyes/core/load_config

# Variables
scoreboard players set #6 twvp.math 6
scoreboard players set #43 twvp.math 43
scoreboard players set #256 twvp.math 256


# Configs

# Eyes minimum looking away time required
scoreboard players set #eyes.looking_away_time twge.data 100

# Delay for eyes to become visible after summoned
scoreboard players set #eyes.min_appearing_delay twge.data 5
scoreboard players set #eyes.max_appearing_delay twge.data 40

# Time without blinking
scoreboard players set #eyes.min_staring_time twge.data 10
scoreboard players set #eyes.max_staring_time twge.data 80

# Default chance to summon an eye
scoreboard players set #eyes.default_summon_chance twge.data 1000

# Increase the chance by this value every failure (100% = 100,000)
scoreboard players set #eyes.summon_chance_increase twge.data 25

# Eyes max ascending height
scoreboard players set #eyes.summon_max_ascend twge.data 60

