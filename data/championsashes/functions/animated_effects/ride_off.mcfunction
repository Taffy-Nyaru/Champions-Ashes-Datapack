#Killing display entities and riding off in aj files' commands
function championsashes:animated_effects/gamemode
tag @s remove riding_display
tag @s add stiff
scoreboard players set @s[tag=gravity_thrust_user] custom_stiff_time 150
tag @s[tag=gravity_thrust_user] remove gravity_thrust_user

scoreboard players set @s[tag=dimension_slash_user] custom_stiff_time 125
tag @s[tag=dimension_slash_user] remove dimension_slash_user
tag @s[tag=dimension_slasher] remove dimension_slasher

scoreboard players set @s[tag=spinning_slash_user] custom_stiff_time 75
tag @s[tag=spinning_slash_user] remove spinning_slash_user
tag @s[tag=spinning_gravity_thrust] remove spinning_gravity_thrust

scoreboard players set @s[tag=rkgugs_skill_user] custom_stiff_time 100
tag @s[tag=rkgugs_skill_user] remove rkgugs_skill_user

scoreboard players set @s[tag=rkgugs_l1_user] custom_stiff_time 60
tag @s[tag=rkgugs_l1_user] remove rkgugs_l1_user

scoreboard players set @s[tag=starscaller_user] custom_stiff_time 125
tag @s[tag=starscaller_user] remove starscaller_user

scoreboard players set @s[tag=gravity_soul_stream_user] custom_stiff_time 125
tag @s[tag=gravity_soul_stream_user] remove gravity_soul_stream_user

scoreboard players set @s[tag=gravity_blackhole_user] custom_stiff_time 125
tag @s[tag=gravity_blackhole_user] remove gravity_blackhole_user
tag @s[tag=gravity_blackhole_spawned] remove gravity_blackhole_spawned

scoreboard players set @s[tag=ringed_nightstar_user] custom_stiff_time 80
tag @s[tag=ringed_nightstar_user] remove ringed_nightstar_user

scoreboard players set @s[tag=rkss_cancel_user] custom_stiff_time 30
tag @s[tag=rkss_cancel_user] remove rkss_cancel_user

scoreboard players set @s[tag=rkss_skill_user] custom_stiff_time 110
tag @s[tag=rkss_skill_user] remove rkss_skill_user

scoreboard players set @s[tag=messemers_assault_user] custom_stiff_time 125
tag @s[tag=messemers_assault_user] remove messemers_assault_user

scoreboard players set @s[tag=steel_caller_user] custom_stiff_time 90
tag @s[tag=steel_caller_user] remove steel_caller_user

scoreboard players set @s[tag=champions_charge_user] custom_stiff_time 80
tag @s[tag=champions_charge_user] remove champions_charge_user

scoreboard players set @s[tag=crystal_blade_user] custom_stiff_time 20
tag @s[tag=crystal_blade_user] remove crystal_blade_user
tag @s[tag=aquamarine_blade] remove aquamarine_blade

scoreboard players set @s[tag=crystal_blade_heavy_user] custom_stiff_time 45
tag @s[tag=crystal_blade_heavy_user] remove crystal_blade_heavy_user

scoreboard players set @s[tag=blade_of_peril_user] custom_stiff_time 90
tag @s[tag=blade_of_peril_user] remove blade_of_peril_user

scoreboard players set @s[tag=flame_of_lorian_user] custom_stiff_time 100
tag @s[tag=flame_of_lorian_user] remove flame_of_lorian_user
tag @s[tag=lorian_flame] remove lorian_flame

scoreboard players set @s[tag=stamp_upward_cut_user] custom_stiff_time 100
tag @s[tag=stamp_upward_cut_user] remove stamp_upward_cut_user
tag @s[tag=upwardcut] remove upwardcut

scoreboard players set @s[tag=wave_of_destruction_user] custom_stiff_time 130
tag @s[tag=wave_of_destruction_user] remove wave_of_destruction_user
tag @s[tag=destruction_wave] remove destruction_wave

scoreboard players set @s[tag=sword_dance_user] custom_stiff_time 50
tag @s[tag=sword_dance_user] remove sword_dance_user
tag @s[tag=sword_dancer] remove sword_dancer

scoreboard players set @s[tag=knight_lightning_spear_user] custom_stiff_time 100
tag @s[tag=knight_lightning_spear_user] remove knight_lightning_spear_user

scoreboard players set @s[tag=ancient_lightning_spear_user] custom_stiff_time 80
tag @s[tag=ancient_lightning_spear_user] remove ancient_lightning_spear_user

scoreboard players set @s[tag=messemers_orb_user] custom_stiff_time 120
tag @s[tag=messemers_orb_user] remove messemers_orb_user

scoreboard players set @s[tag=blinkbolt_slash_user] custom_stiff_time 90
tag @s[tag=blinkbolt_slash_user] remove blinkbolt_slash_user
tag @s[tag=favor_incantations_user] remove favor_incantations_user

scoreboard players set @s[tag=dynastic_sickleplay_user] custom_stiff_time 110
tag @s[tag=dynastic_sickleplay_user] remove dynastic_sickleplay_user
tag @s[tag=obsidian_lamina_user] remove obsidian_lamina_user

kill @e[tag=player_camera,limit=1,sort=nearest]
execute at @s unless block ~ ~ ~ air unless block ~ ~ ~ water unless block ~ ~ ~ lava run function championsashes:animated_effects/air_detect_start
execute at @s unless block ~ ~1 ~ air unless block ~ ~1 ~ water unless block ~ ~1 ~ lava run function championsashes:animated_effects/air_detect_start