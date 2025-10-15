execute anchored eyes unless block ~ ~ ~ air unless block ~ ~ ~ water unless block ~ ~ ~ lava run data modify entity @s Invulnerable set value 1b
execute anchored eyes unless block ~ ~ ~ air unless block ~ ~ ~ water unless block ~ ~ ~ lava run data modify entity @s[tag=!elder_parrying,tag=!phase2_start_recovering,tag=!nep_phase3_used_teleport] Invulnerable set value 0b

execute unless block ~ ~ ~ air unless block ~ ~ ~ lodestone unless block ~ ~1 ~ air if predicate championsashes:hurttime run function championsashes:entities/drakeblood_knight/nep_elder/fill_blocks
execute unless block ~ ~1 ~ air if predicate championsashes:hurttime run function championsashes:entities/drakeblood_knight/nep_elder/fill_blocks
execute unless block ~ ~2 ~ air if predicate championsashes:hurttime run function championsashes:entities/drakeblood_knight/nep_elder/fill_blocks