scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.messemers_assult.export_version dummy
scoreboard objectives add aj.messemers_assult.rig_loaded dummy
scoreboard objectives add aj.messemers_assult.animation.messemers_assault.local_anim_time dummy
scoreboard objectives add aj.messemers_assult.animation.messemers_assault.loop_mode dummy
scoreboard players set $aj.messemers_assult.animation.messemers_assault aj.id 0
scoreboard players set $aj.messemers_assult.variant.default aj.id 0
scoreboard players set $aj.messemers_assult.variant.flame_burst0 aj.id 1
scoreboard players set $aj.messemers_assult.variant.flame_burst1 aj.id 2
scoreboard players set $aj.messemers_assult.variant.ignite0 aj.id 3
scoreboard players set $aj.messemers_assult.variant.ignite1 aj.id 4
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.messemers_assult.export_version aj.i -160044254
scoreboard players reset * aj.messemers_assult.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.messemers_assult.root] run function animated_java:messemers_assult/zzzzzzzz/on_load