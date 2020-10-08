#> thewii:gloomy_eyes/core/install

# Objectives
scoreboard objectives add twge.data dummy
scoreboard objectives add twge.temp dummy

scoreboard objectives add twge.id dummy


# Installed
data modify storage thewii:gloomy_eyes/data installed set value 1b


# Versioning
function thewii:gloomy_eyes/core/version


# Installed message
tellraw @a [{"text":"[Datapack]: ","color":"yellow","bold":true},{"text":"Gloomy Eyes v","color":"white","bold":false},{"score":{"name":"$version.major","objective":"twge.data"},"color":"white","bold":false},{"text":".","color":"white","bold":false},{"score":{"name":"$version.minor","objective":"twge.data"},"color":"white","bold":false},{"text":".","color":"white","bold":false},{"score":{"name":"$version.patch","objective":"twge.data"},"color":"white","bold":false},{"text":" was installed!","color":"white","bold":false}]