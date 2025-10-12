execute as @e[tag=aj.nep_moonlight_slash.root,limit=1,sort=nearest] run function animated_java:nep_moonlight_slash/remove/this

tag @e[type=wither_skeleton,tag=nep_elder] remove nep_ice_animation

kill @e[type=item_display,tag=nep_moonlight_slash]

scoreboard players set weapon_class championsashes_Timer 100

kill @e[tag=nep_ride,type=item_display]
