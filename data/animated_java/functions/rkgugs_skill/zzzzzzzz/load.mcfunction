scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.rkgugs_skill.export_version dummy
scoreboard objectives add aj.rkgugs_skill.rig_loaded dummy
scoreboard objectives add aj.rkgugs_skill.animation.rkgugs_skill.local_anim_time dummy
scoreboard objectives add aj.rkgugs_skill.animation.rkgugs_l1.local_anim_time dummy
scoreboard objectives add aj.rkgugs_skill.animation.rkgugs_skill.loop_mode dummy
scoreboard objectives add aj.rkgugs_skill.animation.rkgugs_l1.loop_mode dummy
scoreboard players set $aj.rkgugs_skill.animation.rkgugs_skill aj.id 0
scoreboard players set $aj.rkgugs_skill.animation.rkgugs_l1 aj.id 1
scoreboard players set $aj.rkgugs_skill.variant.default aj.id 0
scoreboard players set $aj.rkgugs_skill.variant.ember aj.id 1
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.rkgugs_skill.export_version aj.i 703237346
scoreboard players reset * aj.rkgugs_skill.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.rkgugs_skill.root] run function animated_java:rkgugs_skill/zzzzzzzz/on_load