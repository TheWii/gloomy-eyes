#> thewii:gloomy_eyes/player/check/start

# Tag self
tag @s add twge.self

# Forward
scoreboard players set #loop twge.temp 1
execute if predicate thewii:gloomy_eyes/chance_to_summon at @s anchored eyes positioned ^ ^ ^ run function thewii:gloomy_eyes/player/check/raycast

# Tag remove self
tag @s remove twge.self