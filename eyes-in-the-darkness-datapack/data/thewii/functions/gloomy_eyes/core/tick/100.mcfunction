#> thewii:gloomy_eyes/core/tick/100

# Schedule
schedule function thewii:gloomy_eyes/core/tick/100 100t

# As Gloomy Eyes 
execute as @e[type=minecraft:armor_stand,tag=twge.eyes] run function thewii:gloomy_eyes/eyes/tick_100

# Player IDs
execute as @a unless score @s twge.id matches 0.. store result score @s twge.id run scoreboard players add #global.id twge.data 1