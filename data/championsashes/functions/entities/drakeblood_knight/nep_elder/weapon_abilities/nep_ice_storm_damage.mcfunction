execute at @s facing entity @e[tag=aj.zamor_ice_storm.root,type=item_display,tag=nep_ice_storm_played_anim,limit=1,sort=nearest,distance=..8.5] eyes run tp @s ^-0.1 ^0.02 ^0.0
damage @s[distance=..5] 1 championsashes:frostbite by @a[limit=1,sort=nearest,tag=zamor_ice_storm_user]
scoreboard players add @s[distance=..5] frostbite_Timer 50