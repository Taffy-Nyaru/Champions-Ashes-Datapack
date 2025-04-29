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

#Bomber Elytra
execute if entity @s[tag=disableFallDamage] run function championsashes:items/bomber/disablefalldamage