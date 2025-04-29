scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.gravity_thrust.export_version dummy
scoreboard objectives add aj.gravity_thrust.rig_loaded dummy
scoreboard objectives add aj.gravity_thrust.animation.gravity_thrust.local_anim_time dummy
scoreboard objectives add aj.gravity_thrust.animation.gravity_thrust.loop_mode dummy
scoreboard players set $aj.gravity_thrust.animation.gravity_thrust aj.id 0
scoreboard players set $aj.gravity_thrust.variant.default aj.id 0
scoreboard players set $aj.gravity_thrust.variant.enchantment2 aj.id 1
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.gravity_thrust.export_version aj.i -432450288
scoreboard players reset * aj.gravity_thrust.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.gravity_thrust.root] run function animated_java:gravity_thrust/zzzzzzzz/on_load