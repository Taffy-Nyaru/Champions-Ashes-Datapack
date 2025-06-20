scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.death_blighted.export_version dummy
scoreboard objectives add aj.death_blighted.rig_loaded dummy
scoreboard objectives add aj.death_blighted.animation.death_blighted.local_anim_time dummy
scoreboard objectives add aj.death_blighted.animation.death_blighted.loop_mode dummy
scoreboard players set $aj.death_blighted.animation.death_blighted aj.id 0
scoreboard players set $aj.death_blighted.variant.death_blight4 aj.id 0
scoreboard players set $aj.death_blighted.variant.death_blight0 aj.id 1
scoreboard players set $aj.death_blighted.variant.death_blight1 aj.id 2
scoreboard players set $aj.death_blighted.variant.death_blight2 aj.id 3
scoreboard players set $aj.death_blighted.variant.death_blight3 aj.id 4
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.death_blighted.export_version aj.i -1128087244
scoreboard players reset * aj.death_blighted.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.death_blighted.root] run function animated_java:death_blighted/zzzzzzzz/on_load