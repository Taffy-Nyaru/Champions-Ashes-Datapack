scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.crystal_blade.export_version dummy
scoreboard objectives add aj.crystal_blade.rig_loaded dummy
scoreboard objectives add aj.crystal_blade.animation.crystal_blade.local_anim_time dummy
scoreboard objectives add aj.crystal_blade.animation.crystal_blade_heavy.local_anim_time dummy
scoreboard objectives add aj.crystal_blade.animation.crystal_blade.loop_mode dummy
scoreboard objectives add aj.crystal_blade.animation.crystal_blade_heavy.loop_mode dummy
scoreboard players set $aj.crystal_blade.animation.crystal_blade aj.id 0
scoreboard players set $aj.crystal_blade.animation.crystal_blade_heavy aj.id 1
scoreboard players set $aj.crystal_blade.variant.default aj.id 0
scoreboard players set $aj.crystal_blade.variant.ignite aj.id 1
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.crystal_blade.export_version aj.i 99149229
scoreboard players reset * aj.crystal_blade.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.crystal_blade.root] run function animated_java:crystal_blade/zzzzzzzz/on_load