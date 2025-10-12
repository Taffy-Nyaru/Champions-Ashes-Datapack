scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.nep_ringed_knight_straight_sword.export_version dummy
scoreboard objectives add aj.nep_ringed_knight_straight_sword.rig_loaded dummy
scoreboard objectives add aj.nep_ringed_knight_straight_sword.animation.skill.local_anim_time dummy
scoreboard objectives add aj.nep_ringed_knight_straight_sword.animation.cancel.local_anim_time dummy
scoreboard objectives add aj.nep_ringed_knight_straight_sword.animation.skill.loop_mode dummy
scoreboard objectives add aj.nep_ringed_knight_straight_sword.animation.cancel.loop_mode dummy
scoreboard players set $aj.nep_ringed_knight_straight_sword.animation.skill aj.id 0
scoreboard players set $aj.nep_ringed_knight_straight_sword.animation.cancel aj.id 1
scoreboard players set $aj.nep_ringed_knight_straight_sword.variant.default aj.id 0
scoreboard players set $aj.nep_ringed_knight_straight_sword.variant.ignite aj.id 1
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.nep_ringed_knight_straight_sword.export_version aj.i 268507941
scoreboard players reset * aj.nep_ringed_knight_straight_sword.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.nep_ringed_knight_straight_sword.root] run function animated_java:nep_ringed_knight_straight_sword/zzzzzzzz/on_load