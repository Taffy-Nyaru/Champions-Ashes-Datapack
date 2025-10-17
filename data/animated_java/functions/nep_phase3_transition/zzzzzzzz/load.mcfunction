scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.nep_phase3_transition.export_version dummy
scoreboard objectives add aj.nep_phase3_transition.rig_loaded dummy
scoreboard objectives add aj.nep_phase3_transition.animation.nep_phase3_transition.local_anim_time dummy
scoreboard objectives add aj.nep_phase3_transition.animation.nep_phase3_transition.loop_mode dummy
scoreboard players set $aj.nep_phase3_transition.animation.nep_phase3_transition aj.id 0
scoreboard players set $aj.nep_phase3_transition.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.nep_phase3_transition.export_version aj.i -347971567
scoreboard players reset * aj.nep_phase3_transition.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.nep_phase3_transition.root] run function animated_java:nep_phase3_transition/zzzzzzzz/on_load