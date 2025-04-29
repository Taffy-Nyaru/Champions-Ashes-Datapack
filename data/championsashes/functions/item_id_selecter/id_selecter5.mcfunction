#Meteorite Staff
execute if score @s ca.item.id_selecter_mainhand matches 1031 run function championsashes:items/meteorite_staff/durability

#Moonlight Greatsword
execute if score @s ca.item.id_selecter_mainhand matches 1032 if score @s shift matches 1.. run function championsashes:items/moonlight_greatsword/moonlight_greatsword
execute if score @s ca.item.id_selecter_offhand matches 1032 if score @s[tag=!stiff] shift matches 1.. unless entity @e[tag=aj.zamor_ice_storm.root,distance=..10] run function championsashes:items/moonlight_greatsword/zamor_ice_storm

#Moonveil
execute if score @s ca.item.id_selecter_mainhand matches 1033 if score @s shift matches 1.. run function championsashes:items/moonveil/dimension_slash

#Murky Hand Scythe
execute if score @s ca.item.id_selecter_mainhand matches 1034 run function championsashes:items/murky/murky
execute if score @s ca.item.id_selecter_offhand matches 1034 unless entity @e[tag=aj.murky_hand_scythe.root,distance=..2] run function championsashes:items/murky/soul_five

#Nightrider's Glaive
execute if score @s ca.item.id_selecter_mainhand matches 1035 if entity @s[advancements={championsashes:hurt_entities=true}] run scoreboard players add @e[tag=raycast.target,predicate=championsashes:hurttime,type=!#championsashes:special_entities] frostbite_Timer 600
execute if score @s ca.item.id_selecter_mainhand matches 1035 if score @s shift matches 1.. run function championsashes:items/nightrider_glaive/magicblade_phanalax


#-----------------Special Effects


#Meteorite Staff
execute as @e[type=item_display,distance=..25,tag=aj.gravity_orb_projectile.root] at @s run function championsashes:projectiles/gravity_orb_projectile/gravity_orb_projectile
execute if entity @s[tag=shot_gravity_orb] unless entity @e[type=item_display,distance=..25,tag=aj.gravity_orb_projectile.root] run tag @s remove shot_gravity_orb

#Moonlight Greatsword
execute if entity @e[distance=..50,type=item_display,tag=moonlight_slash] run function championsashes:projectiles/moonlight_slash/moonlight_slash

#Murky Hand Scythe
execute as @s[tag=quickstep] at @s run function championsashes:items/murky/quickstep
execute if score #quickstep_enter_block championsashes_Timer matches 20.. run tag @s[tag=quickstep_enter_block] remove quickstep_enter_block
execute if score #quickstep_enter_block championsashes_Timer matches 20.. run scoreboard players set #quickstep_enter_block championsashes_Timer 0

#Phanalx
execute as @s[tag=with_phanalax] run function championsashes:projectiles/phanalax/phanalax
execute as @e[distance=..5,type=item_display,tag=phanalax0] run function championsashes:projectiles/phanalax/rotation
execute as @e[distance=..5,type=item_display,tag=phanalax1] run function championsashes:projectiles/phanalax/rotation
execute as @e[distance=..5,type=item_display,tag=phanalax2] run function championsashes:projectiles/phanalax/rotation