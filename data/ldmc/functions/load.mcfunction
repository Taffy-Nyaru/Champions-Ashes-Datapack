function ldmc:tick20

#Player related
scoreboard objectives add shift minecraft.custom:minecraft.sneak_time
scoreboard objectives add anger dummy
scoreboard objectives add temp.0 dummy
scoreboard objectives add rClick dummy
scoreboard objectives add lClick dummy
scoreboard objectives add timer dummy
scoreboard objectives add raycastvalue dummy
scoreboard objectives add shadow_pearl_playerHotbar dummy
scoreboard objectives add ender_ring_playerHotbar dummy
scoreboard objectives add branch_playerHotbar dummy
scoreboard objectives add player_rotation dummy
scoreboard objectives add stiff_time dummy
scoreboard objectives add custom_stiff_time dummy
scoreboard objectives add itemCount dummy
scoreboard objectives add euclidean_positionX dummy
scoreboard objectives add euclidean_positionY dummy
scoreboard objectives add euclidean_positionZ dummy

#Using Items
scoreboard objectives add usedAnvil minecraft.custom:minecraft.interact_with_anvil
scoreboard objectives add usedFurnace minecraft.custom:minecraft.interact_with_furnace
scoreboard objectives add usedmedal minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add usedCE minecraft.used:minecraft.written_book
scoreboard objectives add usedTotem minecraft.used:minecraft.totem_of_undying
scoreboard objectives add usedBow minecraft.used:bow
scoreboard objectives add usedCrossbow minecraft.used:crossbow
scoreboard objectives add usedBone minecraft.used:minecraft.compass
scoreboard objectives add usedFirework minecraft.used:minecraft.firework_rocket
scoreboard objectives add usedSnowball minecraft.used:minecraft.snowball
scoreboard objectives add player_death minecraft.custom:minecraft.deaths

#scoreboard objectives add uuidplayer dummy
#scoreboard objectives add uuidinteraction dummy

#Multiplayer Click
scoreboard objectives add killtime dummy
scoreboard objectives add interaction_uuid0 dummy
scoreboard objectives add interaction_uuid1 dummy
scoreboard objectives add interaction_uuid2 dummy
scoreboard objectives add interaction_uuid3 dummy
scoreboard objectives add entityCount dummy
scoreboard objectives add block_rClick dummy
scoreboard objectives add block_lClick dummy

#Destined death of zweihander
scoreboard objectives add sworddamage dummy
scoreboard objectives add percentagescore dummy
scoreboard objectives add MobHealth dummy
scoreboard objectives add sum.temp dummy

#player count
scoreboard objectives add player_count dummy
scoreboard objectives add falldistance dummy
scoreboard objectives add dimension_changed dummy
scoreboard objectives add buffer.temp dummy
scoreboard objectives add related dummy

#Steel Furnace
scoreboard objectives add steelCount dummy

#Void Totem
scoreboard objectives add recursion_times dummy
scoreboard objectives add Y_value dummy

#DragonSlayer Great Bow
scoreboard objectives add owner_uuid0 dummy
scoreboard objectives add owner_uuid1 dummy
scoreboard objectives add owner_uuid2 dummy
scoreboard objectives add owner_uuid3 dummy
scoreboard objectives add crossbow_owner_uuid0 dummy
scoreboard objectives add crossbow_owner_uuid1 dummy
scoreboard objectives add crossbow_owner_uuid2 dummy
scoreboard objectives add crossbow_owner_uuid3 dummy

#Crying Waystone
scoreboard objectives add lode.pos.x dummy
scoreboard objectives add lode.pos.y dummy
scoreboard objectives add lode.pos.z dummy

#Effects
scoreboard objectives add maxHealth dummy
scoreboard objectives add Health dummy
scoreboard objectives add Damage dummy
scoreboard objectives add bleeding_Timer dummy
scoreboard objectives add bloodloss dummy
scoreboard objectives add frostbite_Timer dummy
scoreboard objectives add frostbite_burst dummy
scoreboard objectives add scarlet_rot_Timer dummy
scoreboard objectives add scarlet_rot_delay dummy
scoreboard objectives add scarlet_rot_damage dummy
scoreboard objectives add FireTick dummy

#Phanalax
scoreboard objectives add rotation dummy
scoreboard objectives add 0phanalax_related dummy
scoreboard objectives add 1phanalax_related dummy
scoreboard objectives add 2phanalax_related dummy
scoreboard objectives add 0phanalax_uuid0 dummy
scoreboard objectives add 0phanalax_uuid1 dummy
scoreboard objectives add 0phanalax_uuid2 dummy
scoreboard objectives add 0phanalax_uuid3 dummy
scoreboard objectives add 1phanalax_uuid0 dummy
scoreboard objectives add 1phanalax_uuid1 dummy
scoreboard objectives add 1phanalax_uuid2 dummy
scoreboard objectives add 1phanalax_uuid3 dummy
scoreboard objectives add 2phanalax_uuid0 dummy
scoreboard objectives add 2phanalax_uuid1 dummy
scoreboard objectives add 2phanalax_uuid2 dummy
scoreboard objectives add 2phanalax_uuid3 dummy
scoreboard objectives add kill.temp0 dummy
scoreboard objectives add kill.temp1 dummy
scoreboard objectives add kill.temp2 dummy
scoreboard objectives add arrow_rain.temp dummy

#NightCavalry Halberd
scoreboard objectives add glaive_damage dummy

#Spectator mode
scoreboard objectives add noumenon_uuid0 dummy
scoreboard objectives add noumenon_uuid1 dummy
scoreboard objectives add noumenon_uuid2 dummy
scoreboard objectives add noumenon_uuid3 dummy
scoreboard objectives add gamemode dummy

#Drakeblood Knight
scoreboard objectives add drakeblood_phanalax_time dummy
scoreboard objectives add 0drakeblood_phanalax_uuid0 dummy
scoreboard objectives add 0drakeblood_phanalax_uuid1 dummy
scoreboard objectives add 0drakeblood_phanalax_uuid2 dummy
scoreboard objectives add 0drakeblood_phanalax_uuid3 dummy
scoreboard objectives add 1drakeblood_phanalax_uuid0 dummy
scoreboard objectives add 1drakeblood_phanalax_uuid1 dummy
scoreboard objectives add 1drakeblood_phanalax_uuid2 dummy
scoreboard objectives add 1drakeblood_phanalax_uuid3 dummy
scoreboard objectives add 2drakeblood_phanalax_uuid0 dummy
scoreboard objectives add 2drakeblood_phanalax_uuid1 dummy
scoreboard objectives add 2drakeblood_phanalax_uuid2 dummy
scoreboard objectives add 2drakeblood_phanalax_uuid3 dummy
scoreboard objectives add Elder_Health dummy
scoreboard objectives add summon.temp dummy
bossbar add nep_elder "NEP.Elder"

#Parry
scoreboard objectives add parry_time dummy
scoreboard objectives add noAI_time dummy

#RKSS
scoreboard objectives add cancel dummy

#Murky
scoreboard objectives add damage dummy
scoreboard objectives add quickstep_delay dummy

#PKCS
scoreboard objectives add skill_time dummy
scoreboard objectives add pkcs_damage dummy

#Upgrade Table
scoreboard objectives add rotation_time dummy
scoreboard objectives add xpLevel dummy

#Bewitching Branch
scoreboard objectives add charm_time dummy

#Splitleaf
scoreboard objectives add splitleaf_damage dummy
scoreboard objectives add splitleaf_stiff_time dummy

#Estus Flask
scoreboard objectives add estus_cancel_tick dummy

#Antspur Rapier
scoreboard objectives add bloodhound_step_delay dummy

#Caestus
scoreboard objectives add endure_Timer dummy

#Lothric Holy Sword
scoreboard objectives add lazer_beam_length dummy
scoreboard objectives add lazer_euclidean_distance dummy
scoreboard objectives add lazer_fading dummy

#Shadow Vortex
scoreboard objectives add vortex_timer dummy
scoreboard objectives add vortex_scale dummy

#Snowball UUID detect
scoreboard objectives add snowball_uuid0 dummy
scoreboard objectives add snowball_uuid1 dummy
scoreboard objectives add snowball_uuid2 dummy
scoreboard objectives add snowball_uuid3 dummy

#Generic
scoreboard objectives add ldmc_Timer dummy
scoreboard objectives add ldmcValue dummy
scoreboard objectives add ldmc_return dummy
scoreboard players set count entityCount 0
scoreboard players set #raycast.max raycastvalue 100
scoreboard players set #20 ldmcValue 20
scoreboard players set #60 ldmcValue 60
scoreboard players set #12 ldmcValue 12
scoreboard players set @a arrow_rain.temp 0
scoreboard players set @e[tag=nep_elder] arrow_rain.temp 0
execute as @a unless score @s steelCount matches 1.. run scoreboard players set @a steelCount 1

team add friendly
team modify friendly friendlyFire false

data modify storage generic:main repaircost set value 114514
data modify storage generic:main medalTag set value "not_overwritable"
data modify storage generic:main charged set value 1b
data modify storage generic:main refill set value [{id:"minecraft:air",Count:1b}]
data modify storage generic:main HatCMD set value 1390007
data modify storage generic:main gtx4090CMD set value 1390014
data modify storage generic:main gtx690CMD set value 1390013
data modify storage generic:main shadow_pearlCMD set value 1390015
data modify storage generic:main shadow_pearlCMD1 set value 1390016
data modify storage generic:main shadow_pearlCMD2 set value 1390017
data modify storage generic:main shadow_pearlCMD3 set value 1390018
data modify storage generic:main shadow_pearlCMD4 set value 1390019
data modify storage generic:main shadow_pearl_ignite1CMD set value 1390020
data modify storage generic:main shadow_pearl_ignite2CMD set value 1390021
data modify storage generic:main shadow_pearl_ignite3CMD set value 1390022
data modify storage generic:main shadow_pearl_ignite4CMD set value 1390023
data modify storage generic:main ender_ring_closedCMD set value 1390039
data modify storage generic:main ender_ring_activateCMD set value 1390040
data modify storage generic:main shadow_pearlDamage1 set value 25
data modify storage generic:main shadow_pearlDamage2 set value 50
data modify storage generic:main shadow_pearlDamage3 set value 75
data modify storage generic:main shadow_pearlDamage4 set value 100
data modify storage generic:main soul_of_elderCMD set value 1390043
data modify storage generic:main rkssCMD set value 1390054
data modify storage generic:main rkss_igniteCMD set value 1390055
data modify storage generic:main branchCMD set value 1390063
data modify storage generic:main warpedstick_action set value 0
data modify storage generic:main moonlight_temp set value {angle:200,axis:[1.0,0.0,0.0]}
#data modify storage generic:main arrow_Motion set value [0.0,-0.5,0.0]
data modify storage generic:main lazer_beam_length set value [0.25f, 1.0f, 0.25f]
data modify storage generic:main lazer_beam_translation set value [0.0f, 1.0f, 0.0f]
advancement revoke @a only ldmc:hurt_entities
summon marker 0 0 0 {UUID:[I;-479181779,-1024310123,-1662299978,336694543]}
#summon zombified_piglin 0 0 0 {ActiveEffects:[{Id:14,Duration:-1,ShowParticles:0b,Amplifier:0b}],NoAI:1b,Invulnerable:1b,UUID:[I;1230931223,-1814085318,-1621598234,1851460226]}
forceload add 0 0 0 0