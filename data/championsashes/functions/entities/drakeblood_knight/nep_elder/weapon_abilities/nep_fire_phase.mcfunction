function animated_java:nep_ringed_knight_straight_sword/summon
execute as @e[type=item_display,distance=..20,tag=aj.nep_ringed_knight_straight_sword.root] run function animated_java:nep_ringed_knight_straight_sword/animations/skill/play
summon item_display ^ ^1 ^-3 {Tags:[nep_ride]}
ride @s mount @e[type=item_display,tag=nep_ride,limit=1,sort=nearest]
tag @s add nep_fire_animation
tag @s remove nep_fire_phase
scoreboard players set @s nep_fire_phase_timer 0