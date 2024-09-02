scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.wave_of_destruction.export_version dummy
scoreboard objectives add aj.wave_of_destruction.rig_loaded dummy
scoreboard objectives add aj.wave_of_destruction.animation.wave_of_destruction.local_anim_time dummy
scoreboard objectives add aj.wave_of_destruction.animation.wave_of_destruction.loop_mode dummy
scoreboard players set $aj.wave_of_destruction.animation.wave_of_destruction aj.id 0
scoreboard players set $aj.wave_of_destruction.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.wave_of_destruction.export_version aj.i 885828606
scoreboard players reset * aj.wave_of_destruction.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.wave_of_destruction.root] run function animated_java:wave_of_destruction/zzzzzzzz/on_load