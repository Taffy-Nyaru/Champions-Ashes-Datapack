scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.ringed_nightstar.export_version dummy
scoreboard objectives add aj.ringed_nightstar.rig_loaded dummy
scoreboard objectives add aj.ringed_nightstar.animation.ringed_nightstar.local_anim_time dummy
scoreboard objectives add aj.ringed_nightstar.animation.ringed_nightstar.loop_mode dummy
scoreboard players set $aj.ringed_nightstar.animation.ringed_nightstar aj.id 0
scoreboard players set $aj.ringed_nightstar.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.ringed_nightstar.export_version aj.i -847455313
scoreboard players reset * aj.ringed_nightstar.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.ringed_nightstar.root] run function animated_java:ringed_nightstar/zzzzzzzz/on_load