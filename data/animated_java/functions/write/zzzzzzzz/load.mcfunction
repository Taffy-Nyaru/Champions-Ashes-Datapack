scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.write.export_version dummy
scoreboard objectives add aj.write.rig_loaded dummy
scoreboard objectives add aj.write.animation.nep.local_anim_time dummy
scoreboard objectives add aj.write.animation.cin.local_anim_time dummy
scoreboard objectives add aj.write.animation.nep.loop_mode dummy
scoreboard objectives add aj.write.animation.cin.loop_mode dummy
scoreboard players set $aj.write.animation.nep aj.id 0
scoreboard players set $aj.write.animation.cin aj.id 1
scoreboard players set $aj.write.variant.0 aj.id 0
scoreboard players set $aj.write.variant.1 aj.id 1
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.write.export_version aj.i -5369607
scoreboard players reset * aj.write.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.write.root] run function animated_java:write/zzzzzzzz/on_load