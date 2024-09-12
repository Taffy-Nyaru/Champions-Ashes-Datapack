scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.murky_hand_scythe.export_version dummy
scoreboard objectives add aj.murky_hand_scythe.rig_loaded dummy
scoreboard objectives add aj.murky_hand_scythe.animation.soul_five.local_anim_time dummy
scoreboard objectives add aj.murky_hand_scythe.animation.murky_r1.local_anim_time dummy
scoreboard objectives add aj.murky_hand_scythe.animation.soul_five.loop_mode dummy
scoreboard objectives add aj.murky_hand_scythe.animation.murky_r1.loop_mode dummy
scoreboard players set $aj.murky_hand_scythe.animation.soul_five aj.id 0
scoreboard players set $aj.murky_hand_scythe.animation.murky_r1 aj.id 1
scoreboard players set $aj.murky_hand_scythe.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.murky_hand_scythe.export_version aj.i 348677899
scoreboard players reset * aj.murky_hand_scythe.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.murky_hand_scythe.root] run function animated_java:murky_hand_scythe/zzzzzzzz/on_load