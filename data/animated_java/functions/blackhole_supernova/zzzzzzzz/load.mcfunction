scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.blackhole_supernova.export_version dummy
scoreboard objectives add aj.blackhole_supernova.rig_loaded dummy
scoreboard objectives add aj.blackhole_supernova.animation.blackhole_supernova.local_anim_time dummy
scoreboard objectives add aj.blackhole_supernova.animation.blackhole_supernova.loop_mode dummy
scoreboard players set $aj.blackhole_supernova.animation.blackhole_supernova aj.id 0
scoreboard players set $aj.blackhole_supernova.variant.0 aj.id 0
scoreboard players set $aj.blackhole_supernova.variant.1 aj.id 1
scoreboard players set $aj.blackhole_supernova.variant.2 aj.id 2
scoreboard players set $aj.blackhole_supernova.variant.3 aj.id 3
scoreboard players set $aj.blackhole_supernova.variant.4 aj.id 4
scoreboard players set $aj.blackhole_supernova.variant.5 aj.id 5
scoreboard players set $aj.blackhole_supernova.variant.vfx1 aj.id 6
scoreboard players set $aj.blackhole_supernova.variant.vfx2 aj.id 7
scoreboard players set $aj.blackhole_supernova.variant.vortex_fade0 aj.id 8
scoreboard players set $aj.blackhole_supernova.variant.vortex_fade1 aj.id 9
scoreboard players set $aj.blackhole_supernova.variant.vortex_fade2 aj.id 10
scoreboard players set $aj.blackhole_supernova.variant.vortex_vfx0 aj.id 11
scoreboard players set $aj.blackhole_supernova.variant.vortex_vfx1 aj.id 12
scoreboard players set $aj.blackhole_supernova.variant.vortex_vfx2 aj.id 13
scoreboard players set $aj.blackhole_supernova.variant.vortex_vfx3 aj.id 14
scoreboard players set $aj.blackhole_supernova.variant.vortex_vfx4 aj.id 15
scoreboard players set $aj.blackhole_supernova.variant.vortex_vfx5 aj.id 16
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.blackhole_supernova.export_version aj.i -294877175
scoreboard players reset * aj.blackhole_supernova.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.blackhole_supernova.root] run function animated_java:blackhole_supernova/zzzzzzzz/on_load