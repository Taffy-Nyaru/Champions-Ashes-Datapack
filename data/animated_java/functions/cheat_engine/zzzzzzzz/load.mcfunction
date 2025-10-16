scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.cheat_engine.export_version dummy
scoreboard objectives add aj.cheat_engine.rig_loaded dummy
scoreboard objectives add aj.cheat_engine.animation.cheat_engine.local_anim_time dummy
scoreboard objectives add aj.cheat_engine.animation.cheat_engine.loop_mode dummy
scoreboard players set $aj.cheat_engine.animation.cheat_engine aj.id 0
scoreboard players set $aj.cheat_engine.variant.default aj.id 0
scoreboard players set $aj.cheat_engine.variant.0 aj.id 1
scoreboard players set $aj.cheat_engine.variant.new_variant aj.id 2
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.cheat_engine.export_version aj.i 378995547
scoreboard players reset * aj.cheat_engine.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.cheat_engine.root] run function animated_java:cheat_engine/zzzzzzzz/on_load