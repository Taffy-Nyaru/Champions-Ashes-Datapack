scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.starscaller.export_version dummy
scoreboard objectives add aj.starscaller.rig_loaded dummy
scoreboard objectives add aj.starscaller.animation.starscaller.local_anim_time dummy
scoreboard objectives add aj.starscaller.animation.starscaller.loop_mode dummy
scoreboard players set $aj.starscaller.animation.starscaller aj.id 0
scoreboard players set $aj.starscaller.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.starscaller.export_version aj.i -91024439
scoreboard players reset * aj.starscaller.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.starscaller.root] run function animated_java:starscaller/zzzzzzzz/on_load