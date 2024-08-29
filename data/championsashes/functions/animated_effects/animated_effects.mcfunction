execute at @e[tag=aj.rkgugs_skill.locator] run function championsashes:animated_effects/rkgugs_skill
execute at @e[tag=aj.rkgugs_skill.locator] run function championsashes:animated_effects/rkgugs_l1
execute at @e[tag=aj.gravity_thrust.locator] run function championsashes:animated_effects/spinning_gravity_thrust
execute at @e[tag=aj.dimension_slash.locator] run function championsashes:animated_effects/dimension_slash
function championsashes:animated_effects/starscaller
execute at @e[tag=aj.gravity_soul_stream.locator] run function championsashes:animated_effects/gravity_soul_stream
execute as @e[tag=aj.thunder_bullet.root] at @s unless entity @e[type=arrow,distance=..2] run function animated_java:thunder_bullet/remove/this
execute at @e[tag=aj.thunder_bullet.root] run particle minecraft:soul_fire_flame ~ ~ ~ 0.2 0.2 0.2 0.05 2
execute at @e[tag=aj.ancient_lightning_strike.locator] run function championsashes:animated_effects/ancient_lightning_bolt
execute at @e[tag=aj.ringed_nightstar.locator] run function championsashes:animated_effects/feather
execute at @e[tag=aj.rkss_cancel.locator] run function championsashes:animated_effects/rkss_cancel
execute at @e[tag=aj.messemers_assault.locator] run function championsashes:animated_effects/messemers_assault
#execute at @e[tag=aj.ancient_lightning_strike.bone.lightning_bolt] run function championsashes:animated_effects/ancient_lightning_bolt