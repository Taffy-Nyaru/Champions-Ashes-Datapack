scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.f8fq.export_version dummy
scoreboard objectives add aj.f8fq.rig_loaded dummy
scoreboard objectives add aj.f8fq.animation.f8fq.local_anim_time dummy
scoreboard objectives add aj.f8fq.animation.f8fq.loop_mode dummy
scoreboard players set $aj.f8fq.animation.f8fq aj.id 0
scoreboard players set $aj.f8fq.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.f8fq.export_version aj.i 1615532099
scoreboard players reset * aj.f8fq.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.f8fq.root] run function animated_java:f8fq/zzzzzzzz/on_load