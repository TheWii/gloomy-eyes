#> thewii:gloomy_eyes/eyes/haunt/jumpscare

# Jumpscare
scoreboard players set #jumpscare twge.temp 1
scoreboard players set #silent twge.temp 1

# Sounds
playsound thewii:gloomy_eyes.eyes.scream player @a[tag=twge.self,limit=1] ~ ~ ~ 1 1

# Effects
effect give @s minecraft:nausea 9 1 true
effect give @s minecraft:blindness 9 0 true