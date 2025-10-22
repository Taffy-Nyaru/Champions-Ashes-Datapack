tellraw @s [{"translate":"translate.championsashes.nep.kill","italic":false}]
function animated_java:cheat_engine/summon
execute as @e[tag=aj.cheat_engine.root,limit=1,sort=nearest,type=item_display] run function animated_java:cheat_engine/animations/cheat_engine/play
execute at @e[type=item,nbt={Item:{id:"minecraft:written_book",tag:{CustomModelData:1390005}}},limit=1,sort=nearest] run particle end_rod ~ ~2 ~ 0 0 0 0.2 300
#execute at @e[type=item,nbt={Item:{id:"minecraft:written_book",tag:{CustomModelData:1390005}}},limit=1,sort=nearest] run loot spawn ~ ~ ~ loot championsashes:items/soul_of_nep
execute at @e[type=item,nbt={Item:{id:"minecraft:written_book",tag:{CustomModelData:1390005}}},limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Count:20,Value:36}
execute at @e[type=item,nbt={Item:{id:"minecraft:written_book",tag:{CustomModelData:1390005}}},limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Count:10,Value:72}
execute at @e[type=item,nbt={Item:{id:"minecraft:written_book",tag:{CustomModelData:1390005}}},limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Count:5,Value:149}
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
kill @e[type=item_display,tag=nep_favour_ring]
kill @e[type=marker,tag=nep_flight_marker_chasing]
kill @e[type=item_display,tag=nep_flight_marker_chasing]
kill @e[type=item_display,tag=nep_splitleaf_helicopter]
kill @e[type=item_display,tag=bow_glitch_arrow]
kill 00000072-0000-0202-0000-4af7000039da
tag @e[tag=nep_foe,type=!#championsashes:special_entities] remove nep_foe