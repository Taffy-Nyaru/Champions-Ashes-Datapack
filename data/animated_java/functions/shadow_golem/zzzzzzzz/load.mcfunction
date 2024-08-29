scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.shadow_golem.export_version dummy
scoreboard objectives add aj.shadow_golem.rig_loaded dummy
scoreboard objectives add aj.shadow_golem.animation.walk.local_anim_time dummy
scoreboard objectives add aj.shadow_golem.animation.run.local_anim_time dummy
scoreboard objectives add aj.shadow_golem.animation.attack_smashing.local_anim_time dummy
scoreboard objectives add aj.shadow_golem.animation.attack_black_hole.local_anim_time dummy
scoreboard objectives add aj.shadow_golem.animation.attack_right_hand.local_anim_time dummy
scoreboard objectives add aj.shadow_golem.animation.attack_left_hand.local_anim_time dummy
scoreboard objectives add aj.shadow_golem.animation.walk.loop_mode dummy
scoreboard objectives add aj.shadow_golem.animation.run.loop_mode dummy
scoreboard objectives add aj.shadow_golem.animation.attack_smashing.loop_mode dummy
scoreboard objectives add aj.shadow_golem.animation.attack_black_hole.loop_mode dummy
scoreboard objectives add aj.shadow_golem.animation.attack_right_hand.loop_mode dummy
scoreboard objectives add aj.shadow_golem.animation.attack_left_hand.loop_mode dummy
scoreboard players set $aj.shadow_golem.animation.walk aj.id 0
scoreboard players set $aj.shadow_golem.animation.run aj.id 1
scoreboard players set $aj.shadow_golem.animation.attack_smashing aj.id 2
scoreboard players set $aj.shadow_golem.animation.attack_black_hole aj.id 3
scoreboard players set $aj.shadow_golem.animation.attack_right_hand aj.id 4
scoreboard players set $aj.shadow_golem.animation.attack_left_hand aj.id 5
scoreboard players set $aj.shadow_golem.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.shadow_golem.export_version aj.i 677969265
scoreboard players reset * aj.shadow_golem.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.shadow_golem.root] run function animated_java:shadow_golem/zzzzzzzz/on_load