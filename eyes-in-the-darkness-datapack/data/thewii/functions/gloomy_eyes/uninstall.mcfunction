#> thewii:gloomy_eyes/uninstall

# Objectives
scoreboard objectives remove twge.data
scoreboard objectives remove twge.temp
scoreboard objectives remove twge.id
scoreboard objectives remove twge.pose
scoreboard objectives remove twge.animation
scoreboard objectives remove twge.sound
scoreboard objectives remove twge.haunt
scoreboard objectives remove twge.chance


# Vanilla+ Lib modules
execute if data storage thewii:gloomy_eyes/data installed run function thewii:vp_library/math/remove


# Clear storages
function thewii:gloomy_eyes/core/clear_storage

data remove storage thewii:gloomy_eyes/data installed
data remove storage thewii:gloomy_eyes/data version


# Clear load version
scoreboard players reset $gloomy_eyes thewii.load


# Uninstalled message
tellraw @a [{"text":"[Datapack]: ","color":"yellow","bold":true},{"text":"Gloomy Eyes was uninstalled. Disable the datapack to complete uninstallation or /reload to reinstall it.","color":"white","bold":false}]