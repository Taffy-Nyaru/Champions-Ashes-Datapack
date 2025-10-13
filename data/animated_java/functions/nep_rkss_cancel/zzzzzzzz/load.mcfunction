scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.nep_rkss_cancel.export_version dummy
scoreboard objectives add aj.nep_rkss_cancel.rig_loaded dummy
scoreboard objectives add aj.nep_rkss_cancel.animation.nep_rkss_cancel.local_anim_time dummy
scoreboard objectives add aj.nep_rkss_cancel.animation.nep_rkss_cancel.loop_mode dummy
scoreboard players set $aj.nep_rkss_cancel.animation.nep_rkss_cancel aj.id 0
scoreboard players set $aj.nep_rkss_cancel.variant.default aj.id 0
scoreboard players set $aj.nep_rkss_cancel.variant.ignite aj.id 1
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.nep_rkss_cancel.export_version aj.i 354038681
scoreboard players reset * aj.nep_rkss_cancel.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.nep_rkss_cancel.root] run function animated_java:nep_rkss_cancel/zzzzzzzz/on_load