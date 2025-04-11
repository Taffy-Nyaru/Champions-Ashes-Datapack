scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.gravity_impaler.export_version dummy
scoreboard objectives add aj.gravity_impaler.rig_loaded dummy
scoreboard objectives add aj.gravity_impaler.animation.gravity_impaler.local_anim_time dummy
scoreboard objectives add aj.gravity_impaler.animation.gravity_impaler.loop_mode dummy
scoreboard players set $aj.gravity_impaler.animation.gravity_impaler aj.id 0
scoreboard players set $aj.gravity_impaler.variant.default aj.id 0
scoreboard players set $aj.gravity_impaler.variant.fade0 aj.id 1
scoreboard players set $aj.gravity_impaler.variant.fade1 aj.id 2
scoreboard players set $aj.gravity_impaler.variant.fade2 aj.id 3
scoreboard players set $aj.gravity_impaler.variant.faded aj.id 4
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.gravity_impaler.export_version aj.i -494980254
scoreboard players reset * aj.gravity_impaler.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.gravity_impaler.root] run function animated_java:gravity_impaler/zzzzzzzz/on_load