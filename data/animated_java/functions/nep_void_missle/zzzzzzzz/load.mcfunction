scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.nep_void_missle.export_version dummy
scoreboard objectives add aj.nep_void_missle.rig_loaded dummy
scoreboard objectives add aj.nep_void_missle.animation.gravity_sniper.local_anim_time dummy
scoreboard objectives add aj.nep_void_missle.animation.gravity_sniper.loop_mode dummy
scoreboard players set $aj.nep_void_missle.animation.gravity_sniper aj.id 0
scoreboard players set $aj.nep_void_missle.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.nep_void_missle.export_version aj.i -52443125
scoreboard players reset * aj.nep_void_missle.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.nep_void_missle.root] run function animated_java:nep_void_missle/zzzzzzzz/on_load