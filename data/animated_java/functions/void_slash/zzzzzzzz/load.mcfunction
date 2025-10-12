scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.void_slash.export_version dummy
scoreboard objectives add aj.void_slash.rig_loaded dummy
scoreboard objectives add aj.void_slash.animation.void_slash.local_anim_time dummy
scoreboard objectives add aj.void_slash.animation.nep_void_slash_field.local_anim_time dummy
scoreboard objectives add aj.void_slash.animation.void_slash.loop_mode dummy
scoreboard objectives add aj.void_slash.animation.nep_void_slash_field.loop_mode dummy
scoreboard players set $aj.void_slash.animation.void_slash aj.id 0
scoreboard players set $aj.void_slash.animation.nep_void_slash_field aj.id 1
scoreboard players set $aj.void_slash.variant.faded aj.id 0
scoreboard players set $aj.void_slash.variant.0 aj.id 1
scoreboard players set $aj.void_slash.variant.1 aj.id 2
scoreboard players set $aj.void_slash.variant.10 aj.id 3
scoreboard players set $aj.void_slash.variant.11 aj.id 4
scoreboard players set $aj.void_slash.variant.12 aj.id 5
scoreboard players set $aj.void_slash.variant.2 aj.id 6
scoreboard players set $aj.void_slash.variant.3 aj.id 7
scoreboard players set $aj.void_slash.variant.4 aj.id 8
scoreboard players set $aj.void_slash.variant.5 aj.id 9
scoreboard players set $aj.void_slash.variant.6 aj.id 10
scoreboard players set $aj.void_slash.variant.7 aj.id 11
scoreboard players set $aj.void_slash.variant.8 aj.id 12
scoreboard players set $aj.void_slash.variant.9 aj.id 13
scoreboard players set $aj.void_slash.variant.faded0 aj.id 14
scoreboard players set $aj.void_slash.variant.faded1 aj.id 15
scoreboard players set $aj.void_slash.variant.faded2 aj.id 16
scoreboard players set $aj.void_slash.variant.faded3 aj.id 17
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.void_slash.export_version aj.i 1276347021
scoreboard players reset * aj.void_slash.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.void_slash.root] run function animated_java:void_slash/zzzzzzzz/on_load