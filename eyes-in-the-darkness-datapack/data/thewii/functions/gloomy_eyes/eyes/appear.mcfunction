#> thewii:gloomy_eyes/eyes/appear

# Summon
summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,NoGravity:1b,Fire:16000,Tags:["twge.new_eyes","twge.eyes"]}

# Get summoner id
scoreboard players operation #id twge.temp = @s twge.id


# As new eye
execute as @e[type=minecraft:armor_stand,tag=twge.new_eyes,limit=1] run function thewii:gloomy_eyes/eyes/appear2


# Tag player
tag @s add twge.haunted