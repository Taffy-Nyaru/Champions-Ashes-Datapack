scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.zamor_ice_storm.export_version dummy
scoreboard objectives add aj.zamor_ice_storm.rig_loaded dummy
scoreboard objectives add aj.zamor_ice_storm.animation.zamor_ice_storm.local_anim_time dummy
scoreboard objectives add aj.zamor_ice_storm.animation.zamor_ice_storm.loop_mode dummy
scoreboard players set $aj.zamor_ice_storm.animation.zamor_ice_storm aj.id 0
scoreboard players set $aj.zamor_ice_storm.variant.default aj.id 0
scoreboard players set $aj.zamor_ice_storm.variant.new_variant aj.id 1
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.zamor_ice_storm.export_version aj.i -766516805
scoreboard players reset * aj.zamor_ice_storm.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.zamor_ice_storm.root] run function animated_java:zamor_ice_storm/zzzzzzzz/on_load