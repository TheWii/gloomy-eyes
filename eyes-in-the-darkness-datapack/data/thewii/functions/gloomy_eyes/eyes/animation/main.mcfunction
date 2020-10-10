#> thewii:gloomy_eyes/eyes/animation/main

# Sound
execute if score @s twge.sound matches 1.. run scoreboard players remove @s twge.sound 1

scoreboard players set #sound twvp.temp 0
execute unless score @s twge.sound matches 1.. store success score #sound twvp.temp if predicate thewii:gloomy_eyes/chance_to_sound

execute if score #sound twvp.temp matches 1 run playsound thewii:gloomy_eyes.eyes.laugh hostile @a[tag=twge.self,limit=1] ~ ~ ~ 0.5 1
execute if score #sound twvp.temp matches 1 run scoreboard players set @s twge.sound 200


# Opening eyes and stare
scoreboard players operation #model twvp.temp = @s twge.animation
execute if score @s twge.animation matches 0..3 store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players add #model twvp.temp 438000

execute if score @s twge.animation matches 1 at @s run playsound thewii:gloomy_eyes.eyes.blink hostile @a[tag=twge.self,limit=1] ~ ~ ~ 1 1


# Stare
execute if score @s twge.animation matches 3 run function thewii:gloomy_eyes/eyes/animation/stare


# Closing eyes
scoreboard players operation #model twvp.temp = @s twge.animation
scoreboard players remove #model twvp.temp 10
execute if score @s twge.animation matches 10..12 store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players add #model twvp.temp 438000


# Reset
execute if score @s twge.animation matches 10 run scoreboard players set @s twge.animation 0