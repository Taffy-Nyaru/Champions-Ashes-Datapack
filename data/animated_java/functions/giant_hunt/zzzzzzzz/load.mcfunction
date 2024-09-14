scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.giant_hunt.export_version dummy
scoreboard objectives add aj.giant_hunt.rig_loaded dummy
scoreboard objectives add aj.giant_hunt.animation.giant_hunt.local_anim_time dummy
scoreboard objectives add aj.giant_hunt.animation.giant_hunt.loop_mode dummy
scoreboard players set $aj.giant_hunt.animation.giant_hunt aj.id 0
scoreboard players set $aj.giant_hunt.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.giant_hunt.export_version aj.i -766395927
scoreboard players reset * aj.giant_hunt.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.giant_hunt.root] run function animated_java:giant_hunt/zzzzzzzz/on_load