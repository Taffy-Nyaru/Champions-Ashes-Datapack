scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.field_extension.export_version dummy
scoreboard objectives add aj.field_extension.rig_loaded dummy
scoreboard objectives add aj.field_extension.animation.standby.local_anim_time dummy
scoreboard objectives add aj.field_extension.animation.standby.loop_mode dummy
scoreboard players set $aj.field_extension.animation.standby aj.id 0
scoreboard players set $aj.field_extension.variant.field_extension_vfx0 aj.id 0
scoreboard players set $aj.field_extension.variant.blank aj.id 1
scoreboard players set $aj.field_extension.variant.field_extension_vfx1 aj.id 2
scoreboard players set $aj.field_extension.variant.field_extension_vfx2 aj.id 3
scoreboard players set $aj.field_extension.variant.field_extension_vfx3 aj.id 4
scoreboard players set $aj.field_extension.variant.field_extension_vfx4 aj.id 5
scoreboard players set $aj.field_extension.variant.field_extension_vfx5 aj.id 6
scoreboard players set $aj.field_extension.variant.field_extension_vfx6 aj.id 7
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.field_extension.export_version aj.i 1563115654
scoreboard players reset * aj.field_extension.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.field_extension.root] run function animated_java:field_extension/zzzzzzzz/on_load