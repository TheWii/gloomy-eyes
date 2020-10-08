#> thewii:gloomy_eyes/eyes/update_pose

# Store pose
data modify storage thewii:vp_library/temp pose set value [0.0f,0.0f,0.0f]
execute store result storage thewii:vp_library/temp pose[0] float 0.001 run scoreboard players get $pose twge.temp

data modify entity @s Pose.Head set from storage thewii:vp_library/temp pose


# Update comparable score
scoreboard players operation @s twge.pose = $pose twge.temp