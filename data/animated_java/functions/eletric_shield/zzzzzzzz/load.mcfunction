scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.eletric_shield.export_version dummy
scoreboard objectives add aj.eletric_shield.rig_loaded dummy
scoreboard objectives add aj.eletric_shield.animation.electric_shield.local_anim_time dummy
scoreboard objectives add aj.eletric_shield.animation.electric_shield.loop_mode dummy
scoreboard players set $aj.eletric_shield.animation.electric_shield aj.id 0
scoreboard players set $aj.eletric_shield.variant.1 aj.id 0
scoreboard players set $aj.eletric_shield.variant.10 aj.id 1
scoreboard players set $aj.eletric_shield.variant.11 aj.id 2
scoreboard players set $aj.eletric_shield.variant.12 aj.id 3
scoreboard players set $aj.eletric_shield.variant.13 aj.id 4
scoreboard players set $aj.eletric_shield.variant.14 aj.id 5
scoreboard players set $aj.eletric_shield.variant.2 aj.id 6
scoreboard players set $aj.eletric_shield.variant.3 aj.id 7
scoreboard players set $aj.eletric_shield.variant.4 aj.id 8
scoreboard players set $aj.eletric_shield.variant.5 aj.id 9
scoreboard players set $aj.eletric_shield.variant.6 aj.id 10
scoreboard players set $aj.eletric_shield.variant.7 aj.id 11
scoreboard players set $aj.eletric_shield.variant.8 aj.id 12
scoreboard players set $aj.eletric_shield.variant.9 aj.id 13
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.eletric_shield.export_version aj.i 261589113
scoreboard players reset * aj.eletric_shield.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.eletric_shield.root] run function animated_java:eletric_shield/zzzzzzzz/on_load