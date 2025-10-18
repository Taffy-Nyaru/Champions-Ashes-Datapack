execute anchored eyes unless block ~ ~ ~ air unless block ~ ~ ~ water unless block ~ ~ ~ lava run data modify entity @s Invulnerable set value 1b
execute anchored eyes unless block ~ ~ ~ air unless block ~ ~ ~ water unless block ~ ~ ~ lava run data modify entity @s[tag=!elder_parrying,tag=!phase2_start_recovering,tag=!nep_phase3_used_teleport] Invulnerable set value 0b
#/damage d62f2b40-c88a-4ae6-9163-6f8e3050e38d 0 minecraft:generic by @e[type=minecraft:warden,limit=1,sort=nearest]
execute unless block ~ ~ ~ air unless block ~ ~ ~ lodestone unless block ~ ~1 ~ air if predicate championsashes:hurttime run function championsashes:entities/drakeblood_knight/nep_elder/fill_blocks
execute unless block ~ ~1 ~ air if predicate championsashes:hurttime run function championsashes:entities/drakeblood_knight/nep_elder/fill_blocks
execute unless block ~ ~2 ~ air if predicate championsashes:hurttime run function championsashes:entities/drakeblood_knight/nep_elder/fill_blocks