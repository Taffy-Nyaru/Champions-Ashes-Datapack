scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.water_vfx.export_version dummy
scoreboard objectives add aj.water_vfx.rig_loaded dummy
scoreboard objectives add aj.water_vfx.animation.water_vfx.local_anim_time dummy
scoreboard objectives add aj.water_vfx.animation.water_vfx.loop_mode dummy
scoreboard players set $aj.water_vfx.animation.water_vfx aj.id 0
scoreboard players set $aj.water_vfx.variant.default aj.id 0
scoreboard players set $aj.water_vfx.variant.fade0 aj.id 1
scoreboard players set $aj.water_vfx.variant.fade1 aj.id 2
scoreboard players set $aj.water_vfx.variant.fade2 aj.id 3
scoreboard players set $aj.water_vfx.variant.fade3 aj.id 4
scoreboard players set $aj.water_vfx.variant.faded aj.id 5
scoreboard players set $aj.water_vfx.variant.water_wall1 aj.id 6
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.water_vfx.export_version aj.i 1297325269
scoreboard players reset * aj.water_vfx.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.water_vfx.root] run function animated_java:water_vfx/zzzzzzzz/on_load