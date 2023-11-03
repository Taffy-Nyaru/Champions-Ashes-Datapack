function ldmc:tick20

#Player related
scoreboard objectives add shift minecraft.custom:minecraft.sneak_time
scoreboard objectives add anger dummy
scoreboard objectives add temp.0 dummy
scoreboard objectives add rClick dummy
scoreboard objectives add lClick dummy
scoreboard objectives add timer dummy
scoreboard objectives add raycastvalue dummy

#Using Items
scoreboard objectives add usedAnvil minecraft.custom:minecraft.interact_with_anvil
scoreboard objectives add usedFurnace minecraft.custom:minecraft.interact_with_furnace
scoreboard objectives add usedmedal minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add usedBible minecraft.used:minecraft.written_book
scoreboard objectives add usedTotem minecraft.used:minecraft.totem_of_undying
scoreboard objectives add usedBow minecraft.used:bow
scoreboard objectives add usedCrossbow minecraft.used:crossbow
scoreboard objectives add usedBone minecraft.used:minecraft.compass

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
scoreboard objectives add damage dummy

#Spectator mode
scoreboard objectives add noumenon_uuid0 dummy
scoreboard objectives add noumenon_uuid1 dummy
scoreboard objectives add noumenon_uuid2 dummy
scoreboard objectives add noumenon_uuid3 dummy
scoreboard objectives add gamemode dummy

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

team add friendly

data modify storage generic:main repaircost set value 114514
data modify storage generic:main medalTag set value "not_overwritable"
data modify storage generic:main refill set value 1b
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
data modify storage generic:main soul_of_elderCMD set value 1440043
advancement revoke @a only ldmc:hurt_entities
forceload add 0 0 0 0