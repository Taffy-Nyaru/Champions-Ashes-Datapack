scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.nep_phase2_murky.export_version dummy
scoreboard objectives add aj.nep_phase2_murky.rig_loaded dummy
scoreboard objectives add aj.nep_phase2_murky.animation.soul_five.local_anim_time dummy
scoreboard objectives add aj.nep_phase2_murky.animation.soul_five.loop_mode dummy
scoreboard players set $aj.nep_phase2_murky.animation.soul_five aj.id 0
scoreboard players set $aj.nep_phase2_murky.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.nep_phase2_murky.export_version aj.i 31389102
scoreboard players reset * aj.nep_phase2_murky.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.nep_phase2_murky.root] run function animated_java:nep_phase2_murky/zzzzzzzz/on_load