#> thewii:gloomy_eyes/eyes/tick_1
# As: Gloomy Eye
# At: Player[tag=twge.self] anchored eyes

#execute at @s run particle smoke ~ ~ ~ 0 0 0 0 1 normal


# Increase gloomy eyes count
scoreboard players add $gloomy_eyes twge.temp 1

# Tag self
tag @s add twge.self


# Face player
execute at @s facing entity @a[tag=twge.self,limit=1] eyes run tp @s ~ ~ ~ ~ ~

# Head pose
execute store result score $pose twge.temp run data get entity @s Rotation[1] 1000
execute unless score $pose twge.temp = @s twge.pose run function thewii:gloomy_eyes/eyes/update_pose


# Appearing delay
execute if score @s twge.animation matches ..4 run scoreboard players add @s twge.animation 1
execute if score @s twge.animation matches 10.. run scoreboard players remove @s twge.animation 1

execute if score @s twge.animation matches 0.. run function thewii:gloomy_eyes/eyes/animation/main


# Check disappearing
execute if score @s twge.animation matches 1.. run function thewii:gloomy_eyes/eyes/check_disappearing


# Remove tags from self
tag @s remove twge.self