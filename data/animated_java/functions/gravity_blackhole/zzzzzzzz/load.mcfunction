scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.gravity_blackhole.export_version dummy
scoreboard objectives add aj.gravity_blackhole.rig_loaded dummy
scoreboard objectives add aj.gravity_blackhole.animation.gravity_blackhole.local_anim_time dummy
scoreboard objectives add aj.gravity_blackhole.animation.gravity_blackhole.loop_mode dummy
scoreboard players set $aj.gravity_blackhole.animation.gravity_blackhole aj.id 0
scoreboard players set $aj.gravity_blackhole.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.gravity_blackhole.export_version aj.i 171742115
scoreboard players reset * aj.gravity_blackhole.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.gravity_blackhole.root] run function animated_java:gravity_blackhole/zzzzzzzz/on_load