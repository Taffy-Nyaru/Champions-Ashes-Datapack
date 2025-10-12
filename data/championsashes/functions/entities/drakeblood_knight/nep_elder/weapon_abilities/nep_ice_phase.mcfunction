function animated_java:nep_moonlight_slash/summon
execute as @e[type=item_display,distance=..20,tag=aj.nep_moonlight_slash.root] run function animated_java:nep_moonlight_slash/animations/nep_moonlight_slash/play
summon item_display ^ ^1 ^-3 {Tags:[nep_ride]}
ride @s mount @e[type=item_display,tag=nep_ride,limit=1,sort=nearest]
tag @s add nep_ice_animation
tag @s remove nep_ice_phase
scoreboard players set @s nep_ice_phase_timer 0