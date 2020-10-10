#> thewii:gloomy_eyes/player/haunted/tick_1
#execute at @s run particle smoke ~ ~ ~ 0 0 0 0 1 normal

# Tag self
tag @s add twge.self


# Find matching gloomy eyes
scoreboard players set $gloomy_eyes twvp.temp 0
scoreboard players set $disappeared twvp.temp 0

scoreboard players operation #id twvp.temp = @s twge.id
execute at @s anchored eyes as @e[type=minecraft:armor_stand,tag=twge.eyes,distance=..50] if score @s twge.id = #id twvp.temp run function thewii:gloomy_eyes/eyes/tick_1


# Remove haunted tag if no gloomy eyes were found
execute if score $gloomy_eyes twvp.temp matches ..0 run tag @s remove twge.haunted


# Disappeared sound
execute if score $disappeared twvp.temp matches 1 at @s run playsound thewii:gloomy_eyes.eyes.scream hostile @s ~ ~ ~ 0.5 1


# Remove tag from self
tag @s remove twge.self