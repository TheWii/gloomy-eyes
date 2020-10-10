#> thewii:gloomy_eyes/core/load

# Clear schedules
schedule clear thewii:gloomy_eyes/core/tick/20
schedule clear thewii:gloomy_eyes/core/tick/100


# Check requirements
scoreboard players set #load thewii.load 1

# Vanilla+ Lib Modules
execute unless score $vplib.math thewii.load matches 010000 run scoreboard players set #load thewii.load -1

## 1.16+
scoreboard players set $1.16 thewii.load 0
function thewii:gloomy_eyes/core/check_1.16
execute if score $1.16 thewii.load matches 0 run scoreboard players set #load thewii.load 0


# Success load
execute if score #load thewii.load matches 1 run function thewii:gloomy_eyes/core/load2


# CHAT Fail messages
execute if score #load thewii.load matches 0 run tellraw @a [{"text":"[Datapack]: ","color":"red","bold":true},{"text":"Gloomy Eyes failed to load. It requires Minecraft 1.16 or above.","color":"white","bold":false}]
execute if score #load thewii.load matches -1 run tellraw @a [{"text":"[Datapack]: ","color":"red","bold":true},{"text":"Gloomy Eyes failed to load. Library files are either missing or there are incompatibilities between installed datapacks. Please, download the ","color":"white","bold":false},{"text":"latest version.","color":"white","bold":false,"underlined":true,"clickEvent": {"action": "open_url","value": "https://github.com/TheWii/gloomy-eyes/releases/latest"}}]