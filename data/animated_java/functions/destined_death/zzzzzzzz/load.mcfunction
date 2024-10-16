scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.destined_death.export_version dummy
scoreboard objectives add aj.destined_death.rig_loaded dummy
scoreboard objectives add aj.destined_death.animation.destined_death.local_anim_time dummy
scoreboard objectives add aj.destined_death.animation.destined_death.loop_mode dummy
scoreboard players set $aj.destined_death.animation.destined_death aj.id 0
scoreboard players set $aj.destined_death.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.destined_death.export_version aj.i 1172566895
scoreboard players reset * aj.destined_death.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.destined_death.root] run function animated_java:destined_death/zzzzzzzz/on_load