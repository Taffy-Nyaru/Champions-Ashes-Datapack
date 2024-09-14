scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.bullet_generator.export_version dummy
scoreboard objectives add aj.bullet_generator.rig_loaded dummy
scoreboard objectives add aj.bullet_generator.animation.bullet_generator.local_anim_time dummy
scoreboard objectives add aj.bullet_generator.animation.bullet_generator.loop_mode dummy
scoreboard players set $aj.bullet_generator.animation.bullet_generator aj.id 0
scoreboard players set $aj.bullet_generator.variant.blackhole0 aj.id 0
scoreboard players set $aj.bullet_generator.variant.blackhole1 aj.id 1
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.bullet_generator.export_version aj.i -1114090005
scoreboard players reset * aj.bullet_generator.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.bullet_generator.root] run function animated_java:bullet_generator/zzzzzzzz/on_load