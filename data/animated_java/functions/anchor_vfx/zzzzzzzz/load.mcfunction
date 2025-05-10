scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.anchor_vfx.export_version dummy
scoreboard objectives add aj.anchor_vfx.rig_loaded dummy
scoreboard objectives add aj.anchor_vfx.animation.anchor_slash.local_anim_time dummy
scoreboard objectives add aj.anchor_vfx.animation.anchor_slash.loop_mode dummy
scoreboard players set $aj.anchor_vfx.animation.anchor_slash aj.id 0
scoreboard players set $aj.anchor_vfx.variant.faded aj.id 0
scoreboard players set $aj.anchor_vfx.variant.anchor0 aj.id 1
scoreboard players set $aj.anchor_vfx.variant.anchor1 aj.id 2
scoreboard players set $aj.anchor_vfx.variant.anchor2 aj.id 3
scoreboard players set $aj.anchor_vfx.variant.anchor3 aj.id 4
scoreboard players set $aj.anchor_vfx.variant.anchor4 aj.id 5
scoreboard players set $aj.anchor_vfx.variant.anchor5 aj.id 6
scoreboard players set $aj.anchor_vfx.variant.anchor6 aj.id 7
scoreboard players set $aj.anchor_vfx.variant.anchor7 aj.id 8
scoreboard players set $aj.anchor_vfx.variant.fade0 aj.id 9
scoreboard players set $aj.anchor_vfx.variant.fade1 aj.id 10
scoreboard players set $aj.anchor_vfx.variant.fade2 aj.id 11
scoreboard players set $aj.anchor_vfx.variant.fade3 aj.id 12
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.anchor_vfx.export_version aj.i -883542961
scoreboard players reset * aj.anchor_vfx.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.anchor_vfx.root] run function animated_java:anchor_vfx/zzzzzzzz/on_load