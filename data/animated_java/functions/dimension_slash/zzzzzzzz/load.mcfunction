scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.dimension_slash.export_version dummy
scoreboard objectives add aj.dimension_slash.rig_loaded dummy
scoreboard objectives add aj.dimension_slash.animation.dimension_slash.local_anim_time dummy
scoreboard objectives add aj.dimension_slash.animation.dimension_slash.loop_mode dummy
scoreboard players set $aj.dimension_slash.animation.dimension_slash aj.id 0
scoreboard players set $aj.dimension_slash.variant.slash1 aj.id 0
scoreboard players set $aj.dimension_slash.variant.slash2 aj.id 1
scoreboard players set $aj.dimension_slash.variant.slash3 aj.id 2
scoreboard players set $aj.dimension_slash.variant.slash4 aj.id 3
scoreboard players set $aj.dimension_slash.variant.slash5 aj.id 4
scoreboard players set $aj.dimension_slash.variant.slash6 aj.id 5
scoreboard players set $aj.dimension_slash.variant.slash7 aj.id 6
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.dimension_slash.export_version aj.i 1194237706
scoreboard players reset * aj.dimension_slash.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.dimension_slash.root] run function animated_java:dimension_slash/zzzzzzzz/on_load