tellraw @s [{"translate":"translate.ldmc.nep.kill","italic":false}]
execute at @e[type=item,nbt={Item:{id:"minecraft:written_book",tag:{CustomModelData:1390005}}},limit=1,sort=nearest] run particle end_rod ~ ~2 ~ 0 0 0 5 300
bossbar set nep_elder players
kill @e[tag=parry_shield]
kill @e[tag=attacker_indicator]