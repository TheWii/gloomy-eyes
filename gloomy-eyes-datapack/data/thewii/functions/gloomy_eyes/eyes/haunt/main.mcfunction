#> thewii:gloomy_eyes/eyes/haunt/main

# Increase counter
scoreboard players add @s twge.haunt 1

# Check
scoreboard players set #jumpscare twvp.temp 0
execute if score @s twge.haunt >= #eyes.looking_away_time twge.data as @a[tag=twge.self,limit=1] run function thewii:gloomy_eyes/eyes/haunt/jumpscare

# Kill if jumpscared 
execute if score #jumpscare twvp.temp matches 1 run function thewii:gloomy_eyes/eyes/disappear