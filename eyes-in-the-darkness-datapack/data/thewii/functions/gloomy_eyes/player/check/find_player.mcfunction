#> thewii:gloomy_eyes/player/check/find_player

# Decrease score
scoreboard players remove #loop twge.temp 1

# Hit a block
execute unless block ~ ~ ~ #thewii:gloomy_eyes/raycast_through run scoreboard players set #loop twge.temp -1

# Found player
execute if score #loop twge.temp matches 1.. as @a[tag=twge.self,limit=1,dx=0] positioned ~-0.8 ~-0.8 ~-0.8 if entity @s[dx=0] run scoreboard players set #loop twge.temp -2

# Loop
execute if score #loop twge.temp matches 1.. positioned ^ ^ ^0.25 run function thewii:gloomy_eyes/player/check/find_player