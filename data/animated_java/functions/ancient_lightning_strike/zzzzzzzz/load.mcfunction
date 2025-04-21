scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.ancient_lightning_strike.export_version dummy
scoreboard objectives add aj.ancient_lightning_strike.rig_loaded dummy
scoreboard objectives add aj.ancient_lightning_strike.animation.ancient_lightning_strike.local_anim_time dummy
scoreboard objectives add aj.ancient_lightning_strike.animation.ancient_lightning_strike.loop_mode dummy
scoreboard players set $aj.ancient_lightning_strike.animation.ancient_lightning_strike aj.id 0
scoreboard players set $aj.ancient_lightning_strike.variant.lightning_bolt0 aj.id 0
scoreboard players set $aj.ancient_lightning_strike.variant.lightning_bolt1 aj.id 1
scoreboard players set $aj.ancient_lightning_strike.variant.lightning_bolt2 aj.id 2
scoreboard players set $aj.ancient_lightning_strike.variant.lightning_bolt3 aj.id 3
scoreboard players set $aj.ancient_lightning_strike.variant.lightning_bolt4 aj.id 4
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.ancient_lightning_strike.export_version aj.i -82487841
scoreboard players reset * aj.ancient_lightning_strike.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.ancient_lightning_strike.root] run function animated_java:ancient_lightning_strike/zzzzzzzz/on_load