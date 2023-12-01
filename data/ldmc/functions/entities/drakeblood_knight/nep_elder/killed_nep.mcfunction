tellraw @s [{"translate":"translate.ldmc.nep.kill","italic":false}]
execute at @e[type=item,nbt={Item:{id:"minecraft:written_book",tag:{CustomModelData:1390005}}},limit=1,sort=nearest] run particle end_rod ~ ~2 ~ 0 0 0 0.2 300
execute at @e[type=item,nbt={Item:{id:"minecraft:written_book",tag:{CustomModelData:1390005}}},limit=1,sort=nearest] run loot spawn ~ ~ ~ loot ldmc:items/soul_of_nep
bossbar set nep_elder players
kill @e[tag=parry_shield]
kill @e[tag=attacker_indicator]