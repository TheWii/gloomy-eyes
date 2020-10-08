#> thewii:gloomy_eyes/player/check/spread2

# Spread entity
execute store result score #height twge.temp run data get entity @s Pos[1]
scoreboard players add #height twge.temp 5

function thewii:gloomy_eyes/general/entity/spread


# Check location
scoreboard players set #valid twge.temp 1

## Spread too much
execute unless entity @s[distance=..12.5] run scoreboard players set #valid twge.temp -1 

## Player is too near
execute if entity @a[tag=twge.self,distance=..6.25] run scoreboard players set #valid twge.temp -2

## Minimum light required
execute at @s unless predicate thewii:gloomy_eyes/max_light run scoreboard players set #valid twge.temp 0


## Player is on sight
scoreboard players set #loop twge.temp 120
execute if score #valid twge.temp matches 1 at @s positioned ~ ~0.75 ~ facing entity @a[tag=twge.self,limit=1] eyes run function thewii:gloomy_eyes/player/check/find_player

#execute if score #valid twge.temp matches 0 run say It's too bright.
#execute if score #valid twge.temp matches -1 run say Spread too much.
#execute if score #valid twge.temp matches -2 run say Player is too near.
#execute if score #loop twge.temp matches 0 run say Didn't found player.
#execute if score #loop twge.temp matches -1 run say Player's vision is obstructed.
#execute if score #loop twge.temp matches -2 run say Successfuly summoned eye.

# Found player
execute if score #loop twge.temp matches -2 at @s as @a[tag=twge.self,limit=1] run function thewii:gloomy_eyes/eyes/appear

# Kill itself
kill @s