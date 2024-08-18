function championsashes:animated_effects/gamemode
tag @s remove riding_display
tag @s remove gravity_thrust_user
tag @s remove dimension_slash_user
tag @s remove rkgugs_skill_user
tag @s remove rkgugs_l1_user
tag @s remove starscaller_user
tag @s remove gravity_soul_stream_user
kill @e[tag=player_camera,limit=1,sort=nearest]
execute at @s unless block ~ ~1 ~ air unless block ~ ~1 ~ water unless block ~ ~1 ~ lava run spreadplayers ~ ~ 1 1 under 150 true @s
execute at @s unless block ~ ~ ~ air unless block ~ ~ ~ water unless block ~ ~ ~ lava run spreadplayers ~ ~ 1 1 under 150 true @s
tag @s add stiff
scoreboard players set @s custom_stiff_time 100