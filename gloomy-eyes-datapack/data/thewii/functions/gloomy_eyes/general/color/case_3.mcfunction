#> thewii:gloomy_eyes/general/color/case_3

scoreboard players set #rgb.red twvp.temp 0

scoreboard players set #rgb.green twvp.temp 255
scoreboard players operation #rgb.green twvp.temp -= #remainder twvp.temp

scoreboard players set #rgb.blue twvp.temp 255