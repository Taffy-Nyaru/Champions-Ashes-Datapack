execute if entity @p[tag=nep_foe,limit=1,sort=nearest,distance=..20] run effect give @s weakness 1 3 true
execute unless entity @s[tag=nep_attacked_by_player] run function championsashes:entities/drakeblood_knight/nep_elder/phase2/phase2_recover
effect give @s resistance 1 2 true
execute unless entity @p[tag=nep_foe,limit=1,sort=nearest,distance=..20] run effect give @s strength 1 2 true
effect give @s dolphins_grace 1 2 true
effect give @s water_breathing 1 0 true