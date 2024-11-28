scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.ice_crystal.export_version dummy
scoreboard objectives add aj.ice_crystal.rig_loaded dummy
scoreboard objectives add aj.ice_crystal.animation.ice_crystallization.local_anim_time dummy
scoreboard objectives add aj.ice_crystal.animation.ice_crystallization.loop_mode dummy
scoreboard players set $aj.ice_crystal.animation.ice_crystallization aj.id 0
scoreboard players set $aj.ice_crystal.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.ice_crystal.export_version aj.i -410329276
scoreboard players reset * aj.ice_crystal.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.ice_crystal.root] run function animated_java:ice_crystal/zzzzzzzz/on_load