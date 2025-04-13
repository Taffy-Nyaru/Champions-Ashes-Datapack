scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.steel_anchor.export_version dummy
scoreboard objectives add aj.steel_anchor.rig_loaded dummy
scoreboard objectives add aj.steel_anchor.animation.throw_anchor.local_anim_time dummy
scoreboard objectives add aj.steel_anchor.animation.throw_anchor.loop_mode dummy
scoreboard players set $aj.steel_anchor.animation.throw_anchor aj.id 0
scoreboard players set $aj.steel_anchor.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.steel_anchor.export_version aj.i -532890624
scoreboard players reset * aj.steel_anchor.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.steel_anchor.root] run function animated_java:steel_anchor/zzzzzzzz/on_load