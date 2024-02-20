scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.alumopper.export_version dummy
scoreboard objectives add aj.alumopper.rig_loaded dummy
scoreboard objectives add aj.alumopper.animation.animation.alumopper.wavehand.local_anim_time dummy
scoreboard objectives add aj.alumopper.animation.animation.alumopper.wavehand.loop_mode dummy
scoreboard players set $aj.alumopper.animation.animation.alumopper.wavehand aj.id 0
scoreboard players set $aj.alumopper.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.alumopper.export_version aj.i -627391024
scoreboard players reset * aj.alumopper.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.alumopper.root] run function animated_java:alumopper/zzzzzzzz/on_load