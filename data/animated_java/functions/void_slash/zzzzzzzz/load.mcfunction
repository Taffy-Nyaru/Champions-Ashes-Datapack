scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.void_slash.export_version dummy
scoreboard objectives add aj.void_slash.rig_loaded dummy
scoreboard objectives add aj.void_slash.animation.void_slash.local_anim_time dummy
scoreboard objectives add aj.void_slash.animation.void_slash.loop_mode dummy
scoreboard players set $aj.void_slash.animation.void_slash aj.id 0
scoreboard players set $aj.void_slash.variant.void_slash aj.id 0
scoreboard players set $aj.void_slash.variant.slash0 aj.id 1
scoreboard players set $aj.void_slash.variant.slash1 aj.id 2
scoreboard players set $aj.void_slash.variant.slash2 aj.id 3
scoreboard players set $aj.void_slash.variant.slash3 aj.id 4
scoreboard players set $aj.void_slash.variant.slash4 aj.id 5
scoreboard players set $aj.void_slash.variant.slash5 aj.id 6
scoreboard players set $aj.void_slash.variant.slash6 aj.id 7
scoreboard players set $aj.void_slash.variant.slash7 aj.id 8
scoreboard players set $aj.void_slash.variant.slash8 aj.id 9
scoreboard players set $aj.void_slash.variant.slashing0 aj.id 10
scoreboard players set $aj.void_slash.variant.slashing1 aj.id 11
scoreboard players set $aj.void_slash.variant.slashing2 aj.id 12
scoreboard players set $aj.void_slash.variant.slashing3 aj.id 13
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.void_slash.export_version aj.i -720852388
scoreboard players reset * aj.void_slash.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.void_slash.root] run function animated_java:void_slash/zzzzzzzz/on_load