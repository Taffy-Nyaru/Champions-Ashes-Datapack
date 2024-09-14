scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.chainsaw.export_version dummy
scoreboard objectives add aj.chainsaw.rig_loaded dummy
scoreboard objectives add aj.chainsaw.animation.chainsaw.local_anim_time dummy
scoreboard objectives add aj.chainsaw.animation.chainsaw.loop_mode dummy
scoreboard players set $aj.chainsaw.animation.chainsaw aj.id 0
scoreboard players set $aj.chainsaw.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.chainsaw.export_version aj.i 1278813478
scoreboard players reset * aj.chainsaw.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.chainsaw.root] run function animated_java:chainsaw/zzzzzzzz/on_load