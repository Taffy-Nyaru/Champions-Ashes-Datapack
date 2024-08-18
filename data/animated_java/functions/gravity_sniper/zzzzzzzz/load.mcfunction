scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.gravity_sniper.export_version dummy
scoreboard objectives add aj.gravity_sniper.rig_loaded dummy
scoreboard objectives add aj.gravity_sniper.animation.gravity_sniper.local_anim_time dummy
scoreboard objectives add aj.gravity_sniper.animation.gravity_sniper.loop_mode dummy
scoreboard players set $aj.gravity_sniper.animation.gravity_sniper aj.id 0
scoreboard players set $aj.gravity_sniper.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.gravity_sniper.export_version aj.i 675413104
scoreboard players reset * aj.gravity_sniper.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.gravity_sniper.root] run function animated_java:gravity_sniper/zzzzzzzz/on_load