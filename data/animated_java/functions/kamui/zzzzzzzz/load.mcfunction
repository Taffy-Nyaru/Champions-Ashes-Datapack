scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.kamui.export_version dummy
scoreboard objectives add aj.kamui.rig_loaded dummy
scoreboard objectives add aj.kamui.animation.kamui.local_anim_time dummy
scoreboard objectives add aj.kamui.animation.kamui.loop_mode dummy
scoreboard players set $aj.kamui.animation.kamui aj.id 0
scoreboard players set $aj.kamui.variant.default aj.id 0
scoreboard players set $aj.kamui.variant.0 aj.id 1
scoreboard players set $aj.kamui.variant.1 aj.id 2
scoreboard players set $aj.kamui.variant.3 aj.id 3
scoreboard players set $aj.kamui.variant.4 aj.id 4
scoreboard players set $aj.kamui.variant.5 aj.id 5
scoreboard players set $aj.kamui.variant.6 aj.id 6
scoreboard players set $aj.kamui.variant.7 aj.id 7
scoreboard players set $aj.kamui.variant.8 aj.id 8
scoreboard players set $aj.kamui.variant.9 aj.id 9
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.kamui.export_version aj.i -1174548806
scoreboard players reset * aj.kamui.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.kamui.root] run function animated_java:kamui/zzzzzzzz/on_load