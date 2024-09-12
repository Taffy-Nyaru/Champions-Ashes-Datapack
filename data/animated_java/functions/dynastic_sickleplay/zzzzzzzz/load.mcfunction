scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.dynastic_sickleplay.export_version dummy
scoreboard objectives add aj.dynastic_sickleplay.rig_loaded dummy
scoreboard objectives add aj.dynastic_sickleplay.animation.dynastic_sickleplay.local_anim_time dummy
scoreboard objectives add aj.dynastic_sickleplay.animation.dynastic_throw.local_anim_time dummy
scoreboard objectives add aj.dynastic_sickleplay.animation.dynastic_sickleplay.loop_mode dummy
scoreboard objectives add aj.dynastic_sickleplay.animation.dynastic_throw.loop_mode dummy
scoreboard players set $aj.dynastic_sickleplay.animation.dynastic_sickleplay aj.id 0
scoreboard players set $aj.dynastic_sickleplay.animation.dynastic_throw aj.id 1
scoreboard players set $aj.dynastic_sickleplay.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.dynastic_sickleplay.export_version aj.i 719172
scoreboard players reset * aj.dynastic_sickleplay.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.dynastic_sickleplay.root] run function animated_java:dynastic_sickleplay/zzzzzzzz/on_load