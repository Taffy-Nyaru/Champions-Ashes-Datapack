scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.aquamarine_heavy_skill.export_version dummy
scoreboard objectives add aj.aquamarine_heavy_skill.rig_loaded dummy
scoreboard objectives add aj.aquamarine_heavy_skill.animation.aquamarine_heavy_skill.animation.local_anim_time dummy
scoreboard objectives add aj.aquamarine_heavy_skill.animation.aquamarine_heavy_skill.animation.loop_mode dummy
scoreboard players set $aj.aquamarine_heavy_skill.animation.aquamarine_heavy_skill.animation aj.id 0
scoreboard players set $aj.aquamarine_heavy_skill.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.aquamarine_heavy_skill.export_version aj.i -1597526818
scoreboard players reset * aj.aquamarine_heavy_skill.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.aquamarine_heavy_skill.root] run function animated_java:aquamarine_heavy_skill/zzzzzzzz/on_load