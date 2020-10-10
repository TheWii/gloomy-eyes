#> thewii:gloomy_eyes/player/joined0

# Continue if installed
execute if score $gloomy_eyes thewii.load matches 1.. run function thewii:gloomy_eyes/player/joined1

# Revoke if not installed
execute unless score $gloomy_eyes thewii.load matches 1.. run advancement revoke @s only thewii:gloomy_eyes/player/joined