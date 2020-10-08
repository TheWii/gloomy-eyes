#> thewii:gloomy_eyes/eyes/haunt/jumpscare

# Jumpscare
scoreboard players set #jumpscare twge.temp 1

# Sounds
execute at @s run playsound minecraft:entity.ghast.hurt player @s ~ ~ ~ 1 0.6

# Effects
effect give @s minecraft:nausea 9 1 true
effect give @s minecraft:blindness 9 0 true
effect give @s minecraft:night_vision 8 0 true