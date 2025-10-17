#Animations
function championsashes:animated_effects/animation_effects_handle/animated_effects0
function championsashes:animated_effects/animation_effects_handle/animated_effects1

execute as @s[advancements={championsashes:killed_nep=false}] if entity @e[type=item,limit=1,predicate=championsashes:misc/cheat_engine] run function championsashes:entities/drakeblood_knight/nep_elder/killed_nep
execute if entity @e[type=item,limit=1,predicate=championsashes:misc/cheat_engine] run kill @e[type=item,predicate=championsashes:misc/cheat_engine]

execute unless score @s ca.item.id_selecter_mainhand matches 1057 as @e[distance=..20,type=!#championsashes:special_entities,tag=lazer_locked_on] run function championsashes:items/ancient_meteoric_ore_sword/lazer_locked_off

scoreboard players set #3ticks ca.tick3_schedule 0