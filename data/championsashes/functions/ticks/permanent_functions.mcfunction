#Special Arrows
execute if entity @e[type=arrow,distance=..60] run function championsashes:items/dragonslayer_greatbow/arbalest/blast_arrow
execute if entity @e[type=arrow,distance=..60] run function championsashes:items/dragonslayer_greatbow/golem_arrow

#Parry
execute if entity @s[tag=parry] run function championsashes:parry/parry_tick
execute if entity @s[advancements={championsashes:parry/brass_parry=false}] run tag @s remove parry_used

#Snowball Projectiles
execute as @e[distance=..50,type=snowball,predicate=championsashes:misc/death_blight_knife] at @s run function championsashes:items/cheat_engine/death_blight_knife
execute as @e[distance=..50,type=snowball,predicate=championsashes:misc/thunder_knife] at @s run function championsashes:items/cheat_engine/thunder_knife
execute as @e[distance=..50,type=snowball,predicate=championsashes:misc/stalk_dung_pie] at @s run function championsashes:items/stalk_dung_pie
execute as @e[distance=..50,type=snowball,predicate=championsashes:misc/shadow_vortex] at @s run function championsashes:projectiles/shadow_vortex/shadow_vortex
execute as @e[distance=..50,type=item_display,tag=shadow_vortex] run function championsashes:projectiles/shadow_vortex/vortex_timer
execute unless entity @e[distance=..100,type=item_display,tag=shadow_vortex] run tag @a[tag=used_vortex] remove used_vortex

#Daedalus Crucible Wing
function championsashes:items/daedalus_crucible_wing/falldamage

#Solitude Helmet
execute unless score @s[tag=used_solitude_helmet] ca.item.id_selecter_helmet matches 20001 run function championsashes:items/armor/solitude_helmet

#Vampire Hat
execute if score @s ca.item.id_selecter_helmet matches 1055 run function championsashes:items/vampire_hat/effects

#Bomber Elytra
execute if entity @s[tag=disableFallDamage] run function championsashes:items/bomber/disablefalldamage

#Regeneration
execute unless score @s ca.item.id_selecter_mainhand matches 1053 if entity @s[tag=regen] run function championsashes:items/sun_princess_ring/clear_regen

#Electric Wand
execute unless score @s[tag=electric_wand_skill] ca.item.id_selecter_mainhand matches 1059 unless score @s[tag=electric_wand_skill] ca.item.id_selecter_offhand matches 1059 run function animated_java:electric_beacon/remove/all

#Ancient Meteoric Sword
execute unless score @s[tag=!meteoric_ore_snipe_charge_user] ca.item.id_selecter_mainhand matches 1057 unless score @s[tag=!meteoric_ore_snipe_charge_user] ca.item.id_selecter_offhand matches 1057 run function championsashes:items/ancient_meteoric_ore_sword/lazer_locked_off