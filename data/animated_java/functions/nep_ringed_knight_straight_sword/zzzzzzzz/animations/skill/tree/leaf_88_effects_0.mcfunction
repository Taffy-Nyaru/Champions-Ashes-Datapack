function animated_java:nep_ringed_knight_straight_sword/remove/all
tag @e[tag=nep_fire_animation,type=wither_skeleton] remove nep_fire_animation
data modify entity @e[tag=nep_elder,limit=1,sort=nearest,type=wither_skeleton] Invulnerable set value 0b
gamerule mobGriefing true
