scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.electric_beacon.export_version dummy
scoreboard objectives add aj.electric_beacon.rig_loaded dummy
scoreboard objectives add aj.electric_beacon.animation.electric_blast.local_anim_time dummy
scoreboard objectives add aj.electric_beacon.animation.electric_void.local_anim_time dummy
scoreboard objectives add aj.electric_beacon.animation.electric_blast.loop_mode dummy
scoreboard objectives add aj.electric_beacon.animation.electric_void.loop_mode dummy
scoreboard players set $aj.electric_beacon.animation.electric_blast aj.id 0
scoreboard players set $aj.electric_beacon.animation.electric_void aj.id 1
scoreboard players set $aj.electric_beacon.variant.0 aj.id 0
scoreboard players set $aj.electric_beacon.variant.1 aj.id 1
scoreboard players set $aj.electric_beacon.variant.2 aj.id 2
scoreboard players set $aj.electric_beacon.variant.3 aj.id 3
scoreboard players set $aj.electric_beacon.variant.4 aj.id 4
scoreboard players set $aj.electric_beacon.variant.5 aj.id 5
scoreboard players set $aj.electric_beacon.variant.6 aj.id 6
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.electric_beacon.export_version aj.i 655297981
scoreboard players reset * aj.electric_beacon.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.electric_beacon.root] run function animated_java:electric_beacon/zzzzzzzz/on_load