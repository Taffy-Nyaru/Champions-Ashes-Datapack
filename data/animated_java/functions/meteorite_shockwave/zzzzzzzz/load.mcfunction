scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.meteorite_shockwave.export_version dummy
scoreboard objectives add aj.meteorite_shockwave.rig_loaded dummy
scoreboard objectives add aj.meteorite_shockwave.animation.meteorite_particles.local_anim_time dummy
scoreboard objectives add aj.meteorite_shockwave.animation.meteorite_particles.loop_mode dummy
scoreboard players set $aj.meteorite_shockwave.animation.meteorite_particles aj.id 0
scoreboard players set $aj.meteorite_shockwave.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.meteorite_shockwave.export_version aj.i 376972184
scoreboard players reset * aj.meteorite_shockwave.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.meteorite_shockwave.root] run function animated_java:meteorite_shockwave/zzzzzzzz/on_load