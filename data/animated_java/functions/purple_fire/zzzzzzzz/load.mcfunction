scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.purple_fire.export_version dummy
scoreboard objectives add aj.purple_fire.rig_loaded dummy
scoreboard objectives add aj.purple_fire.animation.purple_fire.local_anim_time dummy
scoreboard objectives add aj.purple_fire.animation.purple_fire.loop_mode dummy
scoreboard players set $aj.purple_fire.animation.purple_fire aj.id 0
scoreboard players set $aj.purple_fire.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.purple_fire.export_version aj.i 1372191290
scoreboard players reset * aj.purple_fire.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.purple_fire.root] run function animated_java:purple_fire/zzzzzzzz/on_load