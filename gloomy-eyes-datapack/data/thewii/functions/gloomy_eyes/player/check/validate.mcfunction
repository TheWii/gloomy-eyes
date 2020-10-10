#> thewii:gloomy_eyes/player/check/validate

# Check location
scoreboard players set #valid twvp.temp 1


## Spread too much
execute unless entity @s[distance=..12] run scoreboard players set #valid twvp.temp -1 

## Player is too near
execute if entity @a[tag=twge.self,limit=1,distance=..6] run scoreboard players set #valid twvp.temp -2

## Minimum light required
execute at @s unless predicate thewii:gloomy_eyes/max_light run scoreboard players set #valid twvp.temp 0

## Player is on sight
scoreboard players set #loop twvp.temp 250
execute if score #valid twvp.temp matches 1 at @s positioned ~ ~0.75 ~ facing entity @a[tag=twge.self,limit=1] eyes run function thewii:gloomy_eyes/player/check/find_player


# DEBUG Eye validation
#execute if score #valid twvp.temp matches 0 run say It's too bright.
#execute if score #valid twvp.temp matches -1 run say Spread too much.
#execute if score #valid twvp.temp matches -2 run say Player is too near.
#execute if score #loop twvp.temp matches 0 run say Didn't found player.
#execute if score #loop twvp.temp matches -1 run say Player's vision is obstructed.
#execute if score #loop twvp.temp matches -2 run say Successfuly summoned eye.


# Successfuly summon eye
execute if score #loop twvp.temp matches -2 as @a[tag=twge.self,limit=1] run function thewii:gloomy_eyes/eyes/appear
execute if score #loop twvp.temp matches -2 run scoreboard players add #success_summons twvp.temp 1