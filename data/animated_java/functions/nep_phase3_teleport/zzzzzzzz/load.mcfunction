scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.nep_phase3_teleport.export_version dummy
scoreboard objectives add aj.nep_phase3_teleport.rig_loaded dummy
scoreboard objectives add aj.nep_phase3_teleport.animation.blackhole_teleport.local_anim_time dummy
scoreboard objectives add aj.nep_phase3_teleport.animation.blackhole_teleport.loop_mode dummy
scoreboard players set $aj.nep_phase3_teleport.animation.blackhole_teleport aj.id 0
scoreboard players set $aj.nep_phase3_teleport.variant.fade aj.id 0
scoreboard players set $aj.nep_phase3_teleport.variant.blackhole0 aj.id 1
scoreboard players set $aj.nep_phase3_teleport.variant.blackhole1 aj.id 2
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.nep_phase3_teleport.export_version aj.i 921024838
scoreboard players reset * aj.nep_phase3_teleport.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.nep_phase3_teleport.root] run function animated_java:nep_phase3_teleport/zzzzzzzz/on_load