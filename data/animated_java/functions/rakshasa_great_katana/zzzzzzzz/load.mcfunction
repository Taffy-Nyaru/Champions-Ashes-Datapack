scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.rakshasa_great_katana.export_version dummy
scoreboard objectives add aj.rakshasa_great_katana.rig_loaded dummy
scoreboard objectives add aj.rakshasa_great_katana.animation.weed_cutter.local_anim_time dummy
scoreboard objectives add aj.rakshasa_great_katana.animation.crouch_poke.local_anim_time dummy
scoreboard objectives add aj.rakshasa_great_katana.animation.heavy_jump.local_anim_time dummy
scoreboard objectives add aj.rakshasa_great_katana.animation.rakshasa_r1.local_anim_time dummy
scoreboard objectives add aj.rakshasa_great_katana.animation.weed_cutter.loop_mode dummy
scoreboard objectives add aj.rakshasa_great_katana.animation.crouch_poke.loop_mode dummy
scoreboard objectives add aj.rakshasa_great_katana.animation.heavy_jump.loop_mode dummy
scoreboard objectives add aj.rakshasa_great_katana.animation.rakshasa_r1.loop_mode dummy
scoreboard players set $aj.rakshasa_great_katana.animation.weed_cutter aj.id 0
scoreboard players set $aj.rakshasa_great_katana.animation.crouch_poke aj.id 1
scoreboard players set $aj.rakshasa_great_katana.animation.heavy_jump aj.id 2
scoreboard players set $aj.rakshasa_great_katana.animation.rakshasa_r1 aj.id 3
scoreboard players set $aj.rakshasa_great_katana.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.rakshasa_great_katana.export_version aj.i 1284185968
scoreboard players reset * aj.rakshasa_great_katana.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.rakshasa_great_katana.root] run function animated_java:rakshasa_great_katana/zzzzzzzz/on_load