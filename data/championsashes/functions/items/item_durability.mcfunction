scoreboard players add @s damage 1
#Aquamarine Dagger
execute if entity @s[tag=crystal_blade_user,gamemode=survival] run scoreboard players add @s damage 5
execute if entity @s[tag=crystal_blade_heavy_user,gamemode=survival] run scoreboard players add @s damage 7
#Antspur Rapier
execute if score @s[tag=bloodhound_step,gamemode=survival] usedCrossbow matches 1.. run scoreboard players add @s damage 14
#Gundyr Halberd
execute if entity @s[tag=gundyr_halberd,gamemode=survival] run scoreboard players add @s damage 24
#Black Blade
execute if entity @s[tag=shot,gamemode=survival] run scoreboard players add @s damage 24
#Ringed Knight Straight Sword
execute if entity @s[tag=rkss_cancel_user,gamemode=survival] run scoreboard players add @s damage 10
execute if entity @s[tag=rkss_skill_user,gamemode=survival] run scoreboard players add @s damage 25
#Lothric Holy Sword
execute unless entity @e[tag=lazer_beam,distance=..30] if entity @s[tag=lazer_owner,gamemode=survival] run scoreboard players add @s damage 19
#Ringed Knight Paired Greatswords
execute if entity @s[tag=rkgugs_skill_user,gamemode=survival] run scoreboard players add @s damage 39
execute if entity @s[tag=rkgugs_l1_user,gamemode=survival] run scoreboard players add @s damage 20
#Spinning Gravity Thrust
execute if entity @s[tag=gravity_thrust_user,gamemode=survival] run scoreboard players add @s damage 45
#Moonveil
execute if entity @s[tag=dimension_slash_user,gamemode=survival] run scoreboard players add @s damage 25
execute if entity @s[tag=spinning_slash_user,gamemode=survival] run scoreboard players add @s damage 15
#Gravity Orb
execute if entity @s[tag=shot_gravity_orb,gamemode=survival] run scoreboard players add @s damage 50
#Starscaller
execute if entity @s[tag=starscaller_user,gamemode=survival] run scoreboard players add @s damage 15
#Gravity Soul Stream
execute if entity @s[tag=gravity_soul_stream_user,gamemode=survival] run scoreboard players add @s damage 25
#Gravity blackhole
execute if entity @s[tag=gravity_blackhole_user,gamemode=survival] run scoreboard players add @s damage 20
#Serpent Hunter
execute if entity @s[tag=chainsaw,gamemode=survival] run scoreboard players add @s damage 1
#Moonlight Greatsword
execute if entity @s[tag=moonlight,gamemode=survival] run scoreboard players add @s damage 25
#Dark Sword+22
execute if entity @s[tag=ringed_nightstar_user,gamemode=survival] run scoreboard players add @s damage 15
#Drakeblood Greatsword
execute if entity @s[tag=loop_lightning_bolt,gamemode=survival] run scoreboard players add @s damage 10
#Spear of the Imapler
execute if entity @s[tag=messemers_assault_user,gamemode=survival] run scoreboard players add @s damage 30
#Ledo's Great Hammer
execute if entity @s[tag=steel_caller_user,gamemode=survival] run scoreboard players add @s damage 35
#Gael's Greatsword
execute if entity @s[tag=blade_of_peril_user,gamemode=survival] run scoreboard players add @s damage 25
#Lorian's Greatsword
execute if entity @s[tag=flame_of_lorian_user,gamemode=survival] run scoreboard players add @s damage 25
#Black Knight Greataxe
execute if entity @s[tag=stamp_upward_cut_user,gamemode=survival] run scoreboard players add @s damage 30
#Fume Ultra Greatsword
execute if entity @s[tag=wave_of_destruction_user,gamemode=survival] run scoreboard players add @s damage 40
#Irithyll Straight Sword
execute if entity @s[tag=sword_dance_user,gamemode=survival] run scoreboard players add @s damage 25
#Ancient Lightning Spear
execute if entity @s[tag=ancient_lightning_spear_user,gamemode=survival] run scoreboard players add @s damage 15
#Knight Lightning Spear
execute if entity @s[tag=knight_lightning_spear_user,gamemode=survival] run scoreboard players add @s damage 30
#Messemers Orb
execute if entity @s[tag=messemers_orb_user,gamemode=survival] run scoreboard players add @s damage 40
#Blinkbolt Slash
execute if entity @s[tag=blinkbolt_slash_user,gamemode=survival] run scoreboard players add @s damage 35
#Dyanstic Sickleplay
execute if entity @s[tag=dynastic_sickleplay_user,gamemode=survival] run scoreboard players add @s damage 40

execute store result storage generic:main crossbow_items_damage int 1 run scoreboard players get @s damage
item modify entity @s weapon.mainhand championsashes:crossbow_items_damage
execute if score @s damage matches 2031.. run scoreboard players set @s damage -1