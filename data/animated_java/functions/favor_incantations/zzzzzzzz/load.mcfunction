scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.favor_incantations.export_version dummy
scoreboard objectives add aj.favor_incantations.rig_loaded dummy
scoreboard objectives add aj.favor_incantations.animation.messemers_orb.local_anim_time dummy
scoreboard objectives add aj.favor_incantations.animation.knight_lightning_spear.local_anim_time dummy
scoreboard objectives add aj.favor_incantations.animation.ancient_lightning_spear.local_anim_time dummy
scoreboard objectives add aj.favor_incantations.animation.blinkbolt_slash.local_anim_time dummy
scoreboard objectives add aj.favor_incantations.animation.messemers_orb.loop_mode dummy
scoreboard objectives add aj.favor_incantations.animation.knight_lightning_spear.loop_mode dummy
scoreboard objectives add aj.favor_incantations.animation.ancient_lightning_spear.loop_mode dummy
scoreboard objectives add aj.favor_incantations.animation.blinkbolt_slash.loop_mode dummy
scoreboard players set $aj.favor_incantations.animation.messemers_orb aj.id 0
scoreboard players set $aj.favor_incantations.animation.knight_lightning_spear aj.id 1
scoreboard players set $aj.favor_incantations.animation.ancient_lightning_spear aj.id 2
scoreboard players set $aj.favor_incantations.animation.blinkbolt_slash aj.id 3
scoreboard players set $aj.favor_incantations.variant.lightning_spear0 aj.id 0
scoreboard players set $aj.favor_incantations.variant.blackhole0 aj.id 1
scoreboard players set $aj.favor_incantations.variant.blackhole1 aj.id 2
scoreboard players set $aj.favor_incantations.variant.lightning_spear1 aj.id 3
scoreboard players set $aj.favor_incantations.variant.lightning_spear2 aj.id 4
scoreboard players set $aj.favor_incantations.variant.red_lightning_spear0 aj.id 5
scoreboard players set $aj.favor_incantations.variant.red_lightning_spear1 aj.id 6
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.favor_incantations.export_version aj.i 799641555
scoreboard players reset * aj.favor_incantations.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.favor_incantations.root] run function animated_java:favor_incantations/zzzzzzzz/on_load