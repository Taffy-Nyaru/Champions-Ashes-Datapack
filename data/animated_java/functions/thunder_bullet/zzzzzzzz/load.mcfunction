scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.thunder_bullet.export_version dummy
scoreboard objectives add aj.thunder_bullet.rig_loaded dummy
scoreboard objectives add aj.thunder_bullet.animation.animation.thunder_bullet.rotation.local_anim_time dummy
scoreboard objectives add aj.thunder_bullet.animation.animation.thunder_bullet.rotation.loop_mode dummy
scoreboard players set $aj.thunder_bullet.animation.animation.thunder_bullet.rotation aj.id 0
scoreboard players set $aj.thunder_bullet.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.thunder_bullet.export_version aj.i -88890269
scoreboard players reset * aj.thunder_bullet.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.thunder_bullet.root] run function animated_java:thunder_bullet/zzzzzzzz/on_load