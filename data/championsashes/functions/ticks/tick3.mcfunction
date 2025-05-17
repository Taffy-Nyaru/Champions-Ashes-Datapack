#Animations
function championsashes:animated_effects/animation_effects_handle/animated_effects0
function championsashes:animated_effects/animation_effects_handle/animated_effects1

execute unless score @s ca.item.id_selecter_mainhand matches 1057 as @e[distance=..20,type=!#championsashes:special_entities,tag=lazer_locked_on] run function championsashes:items/ancient_meteoric_ore_sword/lazer_locked_off

scoreboard players set #3ticks ca.tick3_schedule 0