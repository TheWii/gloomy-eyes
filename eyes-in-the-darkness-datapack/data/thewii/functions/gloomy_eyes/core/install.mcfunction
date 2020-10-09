#> thewii:gloomy_eyes/core/install

# Objectives
scoreboard objectives add twge.data dummy
scoreboard objectives add twge.temp dummy

scoreboard objectives add twge.id dummy
scoreboard objectives add twge.pose dummy
scoreboard objectives add twge.animation dummy
scoreboard objectives add twge.sound dummy
scoreboard objectives add twge.haunt dummy
scoreboard objectives add twge.chance dummy


# Vanilla+ Lib modules
execute unless data storage thewii:gloomy_eyes/data installed run function thewii:vp_library/math/add


# Installed
data modify storage thewii:gloomy_eyes/data installed set value 1b


# Versioning
function thewii:gloomy_eyes/core/version


# Installed message
tellraw @a [{"text":"[Datapack]: ","color":"yellow","bold":true},{"text":"Gloomy Eyes v","color":"white","bold":false},{"score":{"name":"$version.major","objective":"twge.data"},"color":"white","bold":false},{"text":".","color":"white","bold":false},{"score":{"name":"$version.minor","objective":"twge.data"},"color":"white","bold":false},{"text":".","color":"white","bold":false},{"score":{"name":"$version.patch","objective":"twge.data"},"color":"white","bold":false},{"text":" was installed!","color":"white","bold":false}]