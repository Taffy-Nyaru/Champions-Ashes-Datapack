scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.blind_spot.export_version dummy
scoreboard objectives add aj.blind_spot.rig_loaded dummy
scoreboard objectives add aj.blind_spot.animation.blind_spot.local_anim_time dummy
scoreboard objectives add aj.blind_spot.animation.blind_spot.loop_mode dummy
scoreboard players set $aj.blind_spot.animation.blind_spot aj.id 0
scoreboard players set $aj.blind_spot.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.blind_spot.export_version aj.i -359256119
scoreboard players reset * aj.blind_spot.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.blind_spot.root] run function animated_java:blind_spot/zzzzzzzz/on_load