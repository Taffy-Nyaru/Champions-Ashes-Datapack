execute unless entity @s[nbt={ActiveEffects:[{Id:10}]}] run effect give @s[tag=!wither_regen] regeneration 114514 0 true
tag @s[tag=!wither_regen] add wither_regen
effect give @s fire_resistance 1 0 true
effect give @s resistance 1 0 true
effect clear @s wither