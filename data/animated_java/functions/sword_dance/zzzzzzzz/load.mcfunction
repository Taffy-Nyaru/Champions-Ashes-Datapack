scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.sword_dance.export_version dummy
scoreboard objectives add aj.sword_dance.rig_loaded dummy
scoreboard objectives add aj.sword_dance.animation.sword_dance.local_anim_time dummy
scoreboard objectives add aj.sword_dance.animation.sword_dance.loop_mode dummy
scoreboard players set $aj.sword_dance.animation.sword_dance aj.id 0
scoreboard players set $aj.sword_dance.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.sword_dance.export_version aj.i 985638717
scoreboard players reset * aj.sword_dance.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.sword_dance.root] run function animated_java:sword_dance/zzzzzzzz/on_load