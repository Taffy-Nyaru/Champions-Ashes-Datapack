scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.space_based_missle.export_version dummy
scoreboard objectives add aj.space_based_missle.rig_loaded dummy
scoreboard objectives add aj.space_based_missle.animation.lockon_target.local_anim_time dummy
scoreboard objectives add aj.space_based_missle.animation.lockon_target.loop_mode dummy
scoreboard players set $aj.space_based_missle.animation.lockon_target aj.id 0
scoreboard players set $aj.space_based_missle.variant.0 aj.id 0
scoreboard players set $aj.space_based_missle.variant.1 aj.id 1
scoreboard players set $aj.space_based_missle.variant.2 aj.id 2
scoreboard players set $aj.space_based_missle.variant.3 aj.id 3
scoreboard players set $aj.space_based_missle.variant.4 aj.id 4
scoreboard players set $aj.space_based_missle.variant.faded aj.id 5
scoreboard players set $aj.space_based_missle.variant.missle0 aj.id 6
scoreboard players set $aj.space_based_missle.variant.missle1 aj.id 7
scoreboard players set $aj.space_based_missle.variant.missle3 aj.id 8
scoreboard players set $aj.space_based_missle.variant.missle4 aj.id 9
scoreboard players set $aj.space_based_missle.variant.missle5 aj.id 10
scoreboard players set $aj.space_based_missle.variant.missle6 aj.id 11
scoreboard players set $aj.space_based_missle.variant.missle7 aj.id 12
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.space_based_missle.export_version aj.i -172347726
scoreboard players reset * aj.space_based_missle.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.space_based_missle.root] run function animated_java:space_based_missle/zzzzzzzz/on_load