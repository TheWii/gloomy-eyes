#> thewii:gloomy_eyes/core/load0


# Check requirements
scoreboard players set #load thewii.load 1

## 1.16+
scoreboard players set $1.16 thewii.load 0
function thewii:gloomy_eyes/core/check_1.16
execute if score $1.16 thewii.load matches 0 run scoreboard players set #load thewii.load 0


# Success load
execute if score #load thewii.load matches 1 run function thewii:gloomy_eyes/core/load1


# Fail messages
execute if score #load thewii.load matches 0 run tellraw @a [{"text":"[Datapack]: ","color":"red","bold":true},{"text":"Gloomy Eyes failed to load. It requires Minecraft 1.16 or above.","color":"white","bold":false}]