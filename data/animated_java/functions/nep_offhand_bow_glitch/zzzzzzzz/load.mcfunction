scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.nep_offhand_bow_glitch.export_version dummy
scoreboard objectives add aj.nep_offhand_bow_glitch.rig_loaded dummy
scoreboard objectives add aj.nep_offhand_bow_glitch.animation.offhand_bow_glitch.local_anim_time dummy
scoreboard objectives add aj.nep_offhand_bow_glitch.animation.offhand_bow_glitch.loop_mode dummy
scoreboard players set $aj.nep_offhand_bow_glitch.animation.offhand_bow_glitch aj.id 0
scoreboard players set $aj.nep_offhand_bow_glitch.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.nep_offhand_bow_glitch.export_version aj.i 276249655
scoreboard players reset * aj.nep_offhand_bow_glitch.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.nep_offhand_bow_glitch.root] run function animated_java:nep_offhand_bow_glitch/zzzzzzzz/on_load