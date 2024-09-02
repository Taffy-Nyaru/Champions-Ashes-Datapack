scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.flame_of_lorian.export_version dummy
scoreboard objectives add aj.flame_of_lorian.rig_loaded dummy
scoreboard objectives add aj.flame_of_lorian.animation.flame_of_lorian.local_anim_time dummy
scoreboard objectives add aj.flame_of_lorian.animation.stamp_upward_cut.local_anim_time dummy
scoreboard objectives add aj.flame_of_lorian.animation.flame_of_lorian.loop_mode dummy
scoreboard objectives add aj.flame_of_lorian.animation.stamp_upward_cut.loop_mode dummy
scoreboard players set $aj.flame_of_lorian.animation.flame_of_lorian aj.id 0
scoreboard players set $aj.flame_of_lorian.animation.stamp_upward_cut aj.id 1
scoreboard players set $aj.flame_of_lorian.variant.default aj.id 0
scoreboard players set $aj.flame_of_lorian.variant.black_knight_greataxe aj.id 1
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.flame_of_lorian.export_version aj.i 1191794049
scoreboard players reset * aj.flame_of_lorian.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.flame_of_lorian.root] run function animated_java:flame_of_lorian/zzzzzzzz/on_load