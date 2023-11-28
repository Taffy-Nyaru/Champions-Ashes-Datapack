scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.aquamarine_dagger.export_version dummy
scoreboard objectives add aj.aquamarine_dagger.rig_loaded dummy
scoreboard objectives add aj.aquamarine_dagger.animation.aquamarine_heavy_skill.local_anim_time dummy
scoreboard objectives add aj.aquamarine_dagger.animation.aquamarine_skill.local_anim_time dummy
scoreboard objectives add aj.aquamarine_dagger.animation.aquamarine_heavy_skill.loop_mode dummy
scoreboard objectives add aj.aquamarine_dagger.animation.aquamarine_skill.loop_mode dummy
scoreboard players set $aj.aquamarine_dagger.animation.aquamarine_heavy_skill aj.id 0
scoreboard players set $aj.aquamarine_dagger.animation.aquamarine_skill aj.id 1
scoreboard players set $aj.aquamarine_dagger.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.aquamarine_dagger.export_version aj.i -30639204
scoreboard players reset * aj.aquamarine_dagger.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.aquamarine_dagger.root] run function animated_java:aquamarine_dagger/zzzzzzzz/on_load