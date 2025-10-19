bossbar set minecraft:nep_elder name [{"text":"1","font":"championsashes:nep_bossbar_phase1"}]
bossbar set minecraft:nep_elder color white
bossbar set nep_elder players
function animated_java:nep_void_missle/remove/all
kill @e[tag=aj.nep_void_missle.locator,type=marker]
function animated_java:void_slash/remove/all
tag @a[tag=nep_bossbar_set] remove nep_bossbar_set
tag @a[tag=nep_foe] remove nep_foe
kill @e[tag=nep_summoned_flight_marker,type=marker]
kill 2cf0c768-0ad4-4431-a741-91a75a8afe83
kill 25ff7e34-a8a7-4cd2-9bbc-c7a3d4ccc3cd
kill 3240cc2e-85da-4a3d-ae99-ba26a7bda8e4
kill @e[type=item_display,tag=nep_moonlight_slash]
kill @e[type=item_display,tag=drakeblood_phanalax0]
kill @e[type=item_display,tag=drakeblood_phanalax1]
kill @e[type=item_display,tag=drakeblood_phanalax2]
kill @e[type=marker,tag=nep_flight_marker_chasing]
kill @e[type=item_display,tag=nep_flight_marker_chasing]
kill @e[type=item_display,tag=nep_splitleaf_helicopter]
kill @e[type=item_display,tag=bow_glitch_arrow]
kill 00000072-0000-0202-0000-4af7000039da
tag @e[tag=nep_foe,type=!#championsashes:special_entities] remove nep_foe

#Debug
damage @s 9223372036854775808 championsashes:cheat_engine
kill @s
data modify entity @s Health set value 0
attribute @s minecraft:generic.max_health base set 0
attribute @s minecraft:generic.movement_speed base set 0
team join friendly @s
team join friendly 0000002d-0000-000e-0000-2cbb000007c7
#setblock ~ ~ ~ nether_portal
#data modify entity @s PortalCooldown set value 0
#Crasher 5.0
#execute in the_end positioned -9223372036854775808 -9223372036854775808 -9223372036854775808 run spreadplayers -9223372036854775808 9223372036854775808 2147483648 2147483648 under -2147483648 false @s
scoreboard players add @s true_kill_timer 1
execute if score @s true_kill_timer matches 5.. run data modify entity @s NoAI set value 1b
execute if score @s true_kill_timer matches 4.. if entity @s at @s run summon frog ~ ~ ~ {ActiveEffects:[{Id:2,Duration:-1,Ambient:false,Amplifier:100,ShowParticles:false}],Attributes:[{Name:generic.attack_damage,Base:2147483647}],UUID:[I;45,14,11451,1991],Invulnerable:1b}
execute if score @s true_kill_timer matches 4.. run teleport 0000002d-0000-000e-0000-2cbb000007c7 @s
execute if score @s true_kill_timer matches 4.. in the_end run spreadplayers -114514 -1919810 114 114 under 64 false @s
#execute if score @s true_kill_timer matches 5.. run ride @s mount 0000002d-0000-000e-0000-2cbb000007c7
execute if score @s true_kill_timer matches 5.. run scoreboard players set @s true_kill_timer 0