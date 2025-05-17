#Killing display entities and riding off in aj files' commands
execute unless entity @p[tag=anchor_skill3] run gamerule mobGriefing true
function championsashes:animated_effects/gamemode
tag @s remove riding_display
#tag @s[tag=!soul_five,tag=!murky_r1_user] add stiff
#scoreboard players set @s[tag=gravity_thrust_user] custom_ca.entity.stiff_time 150
tag @s[tag=gravity_thrust_user] remove gravity_thrust_user

#scoreboard players set @s[tag=dimension_slash_user] custom_ca.entity.stiff_time 125
tag @s[tag=dimension_slash_user] remove dimension_slash_user
tag @s[tag=dimension_slasher] remove dimension_slasher

#scoreboard players set @s[tag=spinning_slash_user] custom_ca.entity.stiff_time 75
tag @s[tag=spinning_slash_user] remove spinning_slash_user
tag @s[tag=spinning_gravity_thrust] remove spinning_gravity_thrust

#scoreboard players set @s[tag=rkgugs_skill_user] custom_ca.entity.stiff_time 100
tag @s[tag=rkgugs_skill_user] remove rkgugs_skill_user

#scoreboard players set @s[tag=rkgugs_l1_user] custom_ca.entity.stiff_time 60
tag @s[tag=rkgugs_l1_user] remove rkgugs_l1_user

#scoreboard players set @s[tag=starscaller_user] custom_ca.entity.stiff_time 125
tag @s[tag=starscaller_user] remove starscaller_user

#scoreboard players set @s[tag=gravity_soul_stream_user] custom_ca.entity.stiff_time 125
tag @s[tag=gravity_soul_stream_user] remove gravity_soul_stream_user

#scoreboard players set @s[tag=gravity_blackhole_user] custom_ca.entity.stiff_time 125
tag @s[tag=gravity_blackhole_user] remove gravity_blackhole_user
tag @s[tag=gravity_blackhole_spawned] remove gravity_blackhole_spawned

#scoreboard players set @s[tag=ringed_nightstar_user] custom_ca.entity.stiff_time 80
tag @s[tag=ringed_nightstar_user] remove ringed_nightstar_user

#scoreboard players set @s[tag=rkss_cancel_user] custom_ca.entity.stiff_time 30
tag @s[tag=rkss_cancel_user] remove rkss_cancel_user

#scoreboard players set @s[tag=rkss_skill_user] custom_ca.entity.stiff_time 110
tag @s[tag=rkss_skill_user] remove rkss_skill_user

#scoreboard players set @s[tag=messemers_assault_user] custom_ca.entity.stiff_time 125
tag @s[tag=messemers_assault_user] remove messemers_assault_user

#scoreboard players set @s[tag=steel_caller_user] custom_ca.entity.stiff_time 90
tag @s[tag=steel_caller_user] remove steel_caller_user

#scoreboard players set @s[tag=champions_charge_user] custom_ca.entity.stiff_time 80
tag @s[tag=champions_charge_user] remove champions_charge_user

#scoreboard players set @s[tag=crystal_blade_user] custom_ca.entity.stiff_time 20
tag @s[tag=crystal_blade_user] remove crystal_blade_user
tag @s[tag=aquamarine_blade] remove aquamarine_blade

#scoreboard players set @s[tag=crystal_blade_heavy_user] custom_ca.entity.stiff_time 45
tag @s[tag=crystal_blade_heavy_user] remove crystal_blade_heavy_user

#scoreboard players set @s[tag=blade_of_peril_user] custom_ca.entity.stiff_time 90
tag @s[tag=blade_of_peril_user] remove blade_of_peril_user

#scoreboard players set @s[tag=flame_of_lorian_user] custom_ca.entity.stiff_time 100
tag @s[tag=flame_of_lorian_user] remove flame_of_lorian_user
tag @s[tag=lorian_flame] remove lorian_flame

#scoreboard players set @s[tag=stamp_upward_cut_user] custom_ca.entity.stiff_time 100
tag @s[tag=stamp_upward_cut_user] remove stamp_upward_cut_user
tag @s[tag=upwardcut] remove upwardcut

#scoreboard players set @s[tag=wave_of_destruction_user] custom_ca.entity.stiff_time 130
tag @s[tag=wave_of_destruction_user] remove wave_of_destruction_user
tag @s[tag=destruction_wave] remove destruction_wave
tp @s[tag=kamui_user] @e[type=item_display,limit=1,sort=nearest,tag=aj.kamui.root]
tag @s[tag=kamui_user] remove kamui_user

#scoreboard players set @s[tag=sword_dance_user] custom_ca.entity.stiff_time 50
tag @s[tag=sword_dance_user] remove sword_dance_user
tag @s[tag=sword_dancer] remove sword_dancer

#scoreboard players set @s[tag=knight_lightning_spear_user] custom_ca.entity.stiff_time 100
tag @s[tag=knight_lightning_spear_user] remove knight_lightning_spear_user

#scoreboard players set @s[tag=ancient_lightning_spear_user] custom_ca.entity.stiff_time 80
tag @s[tag=ancient_lightning_spear_user] remove ancient_lightning_spear_user

#scoreboard players set @s[tag=messemers_orb_user] custom_ca.entity.stiff_time 120
tag @s[tag=messemers_orb_user] remove messemers_orb_user

#scoreboard players set @s[tag=blinkbolt_slash_user] custom_ca.entity.stiff_time 90
tag @s[tag=blinkbolt_slash_user] remove blinkbolt_slash_user
tag @s[tag=favor_incantations_user] remove favor_incantations_user

#scoreboard players set @s[tag=dynastic_sickleplay_user] custom_ca.entity.stiff_time 110
tag @s[tag=dynastic_sickleplay_user] remove dynastic_sickleplay_user
tag @s[tag=dynastic_throw_user] remove dynastic_throw_user
tag @s[tag=obsidian_lamina_user] remove obsidian_lamina_user

tag @s[tag=rakshasa_great_katana_user] remove rakshasa_great_katana_user
#scoreboard players set @s[tag=rakshasa_crouch_poke_user] custom_ca.entity.stiff_time 30
tag @s[tag=rakshasa_crouch_poke_user] remove rakshasa_crouch_poke_user
#scoreboard players set @s[tag=rakshasa_r1_user] custom_ca.entity.stiff_time 50
tag @s[tag=rakshasa_r1_user] remove rakshasa_r1_user
#scoreboard players set @s[tag=rakshasa_jump_attack_user] custom_ca.entity.stiff_time 60
tag @s[tag=rakshasa_jump_attack_user] remove rakshasa_jump_attack_user
#scoreboard players set @s[tag=weed_cutter_user] custom_ca.entity.stiff_time 80
tag @s[tag=weed_cutter_user] remove weed_cutter_user

tag @s[tag=murky_r1_user] remove murky_r1_user
tag @s[tag=soul_five] remove soul_five

#scoreboard players set @s[tag=carian_grandeur_user] custom_ca.entity.stiff_time 80
tag @s[tag=carian_grandeur_user] remove carian_grandeur_user

#scoreboard players set @s[tag=giant_hunt_user] custom_ca.entity.stiff_time 100
tag @s[tag=giant_hunt_user] remove giant_hunt_user

#scoreboard players set @s[tag=blind_spot_user] custom_ca.entity.stiff_time 50
tag @s[tag=blind_spot_user] remove blind_spot_user

#scoreboard players set @s[tag=splitleaf_infinite_user] custom_ca.entity.stiff_time 120
tag @s[tag=splitleaf_infinite_user] remove splitleaf_infinite_user

#scoreboard players set @s[tag=chainsaw_user] custom_ca.entity.stiff_time 200
tag @s[tag=chainsaw_user] remove chainsaw_user
tag @s[tag=shunter_mafia] remove shunter_mafia

tag @s[tag=destined_death_user] remove destined_death_user
tag @s[tag=destined_death_atk] remove destined_death_atk

kill @e[distance=..10,type=item_display,tag=player_camera,limit=1,sort=nearest]
execute at @s[tag=!air_detect,tag=!anchor_skill3] unless block ~ ~ ~ air unless block ~ ~ ~ water unless block ~ ~1 ~ air unless block ~ ~1 ~ water run function championsashes:animated_effects/air_detect_start
tp @s ~ ~0.5 ~ ~ ~