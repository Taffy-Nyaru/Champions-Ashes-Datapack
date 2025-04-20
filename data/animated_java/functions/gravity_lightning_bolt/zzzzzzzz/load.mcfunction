scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.gravity_lightning_bolt.export_version dummy
scoreboard objectives add aj.gravity_lightning_bolt.rig_loaded dummy
scoreboard objectives add aj.gravity_lightning_bolt.animation.gravity_lightning_bolt.local_anim_time dummy
scoreboard objectives add aj.gravity_lightning_bolt.animation.gravity_lightning_bolt.loop_mode dummy
scoreboard players set $aj.gravity_lightning_bolt.animation.gravity_lightning_bolt aj.id 0
scoreboard players set $aj.gravity_lightning_bolt.variant.1 aj.id 0
scoreboard players set $aj.gravity_lightning_bolt.variant.2 aj.id 1
scoreboard players set $aj.gravity_lightning_bolt.variant.3 aj.id 2
scoreboard players set $aj.gravity_lightning_bolt.variant.4 aj.id 3
scoreboard players set $aj.gravity_lightning_bolt.variant.5 aj.id 4
scoreboard players set $aj.gravity_lightning_bolt.variant.new_variant aj.id 5
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.gravity_lightning_bolt.export_version aj.i 460734621
scoreboard players reset * aj.gravity_lightning_bolt.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.gravity_lightning_bolt.root] run function animated_java:gravity_lightning_bolt/zzzzzzzz/on_load