#Animations
function championsashes:animated_effects/animation_effects_handle/animated_effects_bullets

#Void Eye
execute if predicate championsashes:got_item/void_eye as @e[distance=..20,type=marker,tag=void_marker] run scoreboard players add @s void_eye_timer 1
execute if predicate championsashes:got_item/void_eye as @e[distance=..20,type=marker,tag=void_marker,scores={void_eye_timer=1..}] run function championsashes:items/void_eye/effect

#Parry
execute as @e[distance=..7,type=!#championsashes:special_entities,tag=parry_target] at @s unless entity @s[tag=parry,distance=..7] run tag @s remove parry_target
#Brass Shield
execute if entity @s[advancements={championsashes:parry/brass_parry=true},tag=!parry_used] run tag @s add parry
execute as @e[type=item_display,limit=1,distance=..10,tag=shield_breaker] unless score @s ca.item.id_selecter_mainhand matches 1007 unless score @s ca.item.id_selecter_offhand matches 1007 run teleport @s 0 1145 0

scoreboard players set #2ticks ca.tick2_schedule 0