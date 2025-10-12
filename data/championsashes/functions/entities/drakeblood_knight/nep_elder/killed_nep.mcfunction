tellraw @s [{"translate":"translate.championsashes.nep.kill","italic":false}]
execute at @e[type=item,nbt={Item:{id:"minecraft:written_book",tag:{CustomModelData:1390005}}},limit=1,sort=nearest] run particle end_rod ~ ~2 ~ 0 0 0 0.2 300
#execute at @e[type=item,nbt={Item:{id:"minecraft:written_book",tag:{CustomModelData:1390005}}},limit=1,sort=nearest] run loot spawn ~ ~ ~ loot championsashes:items/soul_of_nep
execute at @e[type=item,nbt={Item:{id:"minecraft:written_book",tag:{CustomModelData:1390005}}},limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Count:20,Value:36}
execute at @e[type=item,nbt={Item:{id:"minecraft:written_book",tag:{CustomModelData:1390005}}},limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Count:10,Value:72}
execute at @e[type=item,nbt={Item:{id:"minecraft:written_book",tag:{CustomModelData:1390005}}},limit=1,sort=nearest] run summon minecraft:experience_orb ~ ~ ~ {Count:5,Value:149}
bossbar set nep_elder players
function animated_java:nep_void_missle/remove/all
kill @e[tag=aj.nep_void_missle.locator,type=marker]
function animated_java:void_slash/remove/all
tag @a[tag=nep_bossbar_set] remove nep_bossbar_set
tag @a[tag=nep_foe] remove nep_foe
kill @e[tag=nep_summoned_flight_marker,type=marker]
kill @e[tag=parry_shield]
kill @e[tag=attacker_indicator]
kill @e[tag=nep_projectile]
kill @e[type=item_display,tag=nep_moonlight_slash]
kill @e[type=item_display,tag=drakeblood_phanalax0]
kill @e[type=item_display,tag=drakeblood_phanalax1]
kill @e[type=item_display,tag=drakeblood_phanalax2]
kill @e[type=marker,tag=nep_flight_marker_chasing]

tag @e[tag=nep_foe,type=!#championsashes:special_entities] remove nep_foe