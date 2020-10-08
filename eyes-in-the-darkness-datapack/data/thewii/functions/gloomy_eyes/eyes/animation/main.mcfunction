#> thewii:gloomy_eyes/eyes/animation/main

# Opening eyes and stare
scoreboard players operation #model twge.temp = @s twge.animation
execute if score @s twge.animation matches 0..5 store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players add #model twge.temp 438000

# Stare
execute if score @s twge.animation matches 5 run function thewii:gloomy_eyes/eyes/animation/stare

# Closing eyes
scoreboard players operation #model twge.temp = @s twge.animation
scoreboard players remove #model twge.temp 10
execute if score @s twge.animation matches 10..14 store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players add #model twge.temp 438000

# Reset
execute if score @s twge.animation matches 10 run scoreboard players set @s twge.animation 0