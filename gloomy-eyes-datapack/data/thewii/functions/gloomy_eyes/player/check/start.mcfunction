#> thewii:gloomy_eyes/player/check/start

# Tag self
tag @s add twge.self

# Chance to check summoning
execute unless score @s twge.chance matches ..100000 run scoreboard players operation @s twge.chance = #eyes.default_summon_chance twge.data

scoreboard players set #min twvp.math 1
scoreboard players set #max twvp.math 100000

function thewii:vp_library/math/lcg/ranged_rng

execute store success score #passed_chance twvp.temp if score #result twvp.math <= @s twge.chance


# Proceed
scoreboard players set #success_summons twvp.temp 0
scoreboard players set #loop twvp.temp 1
execute if score #passed_chance twvp.temp matches 1 at @s anchored eyes positioned ^ ^ ^ run function thewii:gloomy_eyes/player/check/raycast


# Reset chance if succeeded
execute if score #success_summons twvp.temp matches 1.. run scoreboard players operation @s twge.chance = #eyes.haunted_neutral_time twge.data
execute if score #success_summons twvp.temp matches 1.. run scoreboard players operation @s twge.chance *= #eyes.summon_chance_increase twge.data
execute if score #success_summons twvp.temp matches 1.. run scoreboard players operation @s twge.chance *= #-1 twvp.math

# Increase chance if failed
scoreboard players set #check_max twvp.temp 100000
scoreboard players operation #check_max twvp.temp -= #eyes.summon_chance_increase twge.data

execute unless score #success_summons twvp.temp matches 1.. if score @s twge.chance <= #check_max twvp.temp run scoreboard players operation @s twge.chance += #eyes.summon_chance_increase twge.data


# DEBUG Chance percent
#execute if score #success_summons twvp.temp matches 1.. run tellraw @s ["Succeeded, set chance to ",{"score":{"name":"@s","objective":"twge.chance"}}]

#scoreboard players operation #chance_int twvp.temp = @s twge.chance
#scoreboard players operation #chance_int twvp.temp /= #1000 twvp.math

#scoreboard players operation #chance_dec twvp.temp = @s twge.chance
#scoreboard players operation #chance_dec twvp.temp %= #1000 twvp.math

#execute if score #passed_chance twvp.temp matches 0 run tellraw @s ["Chance failed, increased chance to ",{"score":{"name":"#chance_int","objective":"twvp.temp"}},",",{"score":{"name":"#chance_dec","objective":"twvp.temp"}},"%."]
#execute if score #passed_chance twvp.temp matches 1 if score #success_summons twvp.temp matches 0 run tellraw @s ["Failed to summon, increased chance to ",{"score":{"name":"#chance_int","objective":"twvp.temp"}},",",{"score":{"name":"#chance_dec","objective":"twvp.temp"}},"%."]


# Tag remove self
tag @s remove twge.self