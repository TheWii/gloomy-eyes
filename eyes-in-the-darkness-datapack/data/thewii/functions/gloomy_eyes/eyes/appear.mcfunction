#> thewii:gloomy_eyes/eyes/appear

# Summon
summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,NoGravity:1b,Fire:16000,Tags:["twge.new_eyes","twge.eyes"],ArmorItems:[{},{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{CustomModelData:438000}}]}


# Set id
scoreboard players operation @e[type=minecraft:armor_stand,tag=twge.new_eyes,limit=1] twge.id = @s twge.id
tag @e[type=minecraft:armor_stand,tag=twge.new_eyes,limit=1] remove twge.new_eyes


# Tag player
tag @s add twge.haunted