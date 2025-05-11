#Animations
function championsashes:animated_effects/animation_effects_handle/animated_effects_bullets

#Parry
execute as @e[distance=..7,type=!#championsashes:special_entities,tag=parry_target] at @s unless entity @s[tag=parry,distance=..7] run tag @s remove parry_target
#Brass Shield
execute if entity @s[advancements={championsashes:parry/brass_parry=true},tag=!parry_used] run tag @s add parry
execute as @e[type=item_display,limit=1,distance=..10,tag=shield_breaker] unless score @s ca.item.id_selecter_mainhand matches 1007 unless score @s ca.item.id_selecter_offhand matches 1007 run teleport @s 0 1145 0

scoreboard players set #2ticks ca.tick2_schedule 0