scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.steel_caller.export_version dummy
scoreboard objectives add aj.steel_caller.rig_loaded dummy
scoreboard objectives add aj.steel_caller.animation.steel_caller.local_anim_time dummy
scoreboard objectives add aj.steel_caller.animation.steel_caller.loop_mode dummy
scoreboard players set $aj.steel_caller.animation.steel_caller aj.id 0
scoreboard players set $aj.steel_caller.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.steel_caller.export_version aj.i 1129115082
scoreboard players reset * aj.steel_caller.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.steel_caller.root] run function animated_java:steel_caller/zzzzzzzz/on_load