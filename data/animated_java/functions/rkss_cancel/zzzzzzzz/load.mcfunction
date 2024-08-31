scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.rkss_cancel.export_version dummy
scoreboard objectives add aj.rkss_cancel.rig_loaded dummy
scoreboard objectives add aj.rkss_cancel.animation.rkss_cancel.local_anim_time dummy
scoreboard objectives add aj.rkss_cancel.animation.rkss_skill.local_anim_time dummy
scoreboard objectives add aj.rkss_cancel.animation.rkss_cancel.loop_mode dummy
scoreboard objectives add aj.rkss_cancel.animation.rkss_skill.loop_mode dummy
scoreboard players set $aj.rkss_cancel.animation.rkss_cancel aj.id 0
scoreboard players set $aj.rkss_cancel.animation.rkss_skill aj.id 1
scoreboard players set $aj.rkss_cancel.variant.default aj.id 0
scoreboard players set $aj.rkss_cancel.variant.flame_burst0 aj.id 1
scoreboard players set $aj.rkss_cancel.variant.flame_burst1 aj.id 2
scoreboard players set $aj.rkss_cancel.variant.ignite aj.id 3
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.rkss_cancel.export_version aj.i -1155567122
scoreboard players reset * aj.rkss_cancel.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.rkss_cancel.root] run function animated_java:rkss_cancel/zzzzzzzz/on_load