scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.meteoric_ore_snipe_charge.export_version dummy
scoreboard objectives add aj.meteoric_ore_snipe_charge.rig_loaded dummy
scoreboard objectives add aj.meteoric_ore_snipe_charge.animation.meteoric_snipe_charge.local_anim_time dummy
scoreboard objectives add aj.meteoric_ore_snipe_charge.animation.meteoric_snipe_charge.loop_mode dummy
scoreboard players set $aj.meteoric_ore_snipe_charge.animation.meteoric_snipe_charge aj.id 0
scoreboard players set $aj.meteoric_ore_snipe_charge.variant.sword_no_light aj.id 0
scoreboard players set $aj.meteoric_ore_snipe_charge.variant.impact10 aj.id 1
scoreboard players set $aj.meteoric_ore_snipe_charge.variant.impact11 aj.id 2
scoreboard players set $aj.meteoric_ore_snipe_charge.variant.impact12 aj.id 3
scoreboard players set $aj.meteoric_ore_snipe_charge.variant.impact13 aj.id 4
scoreboard players set $aj.meteoric_ore_snipe_charge.variant.impact14 aj.id 5
scoreboard players set $aj.meteoric_ore_snipe_charge.variant.impact5 aj.id 6
scoreboard players set $aj.meteoric_ore_snipe_charge.variant.impact6 aj.id 7
scoreboard players set $aj.meteoric_ore_snipe_charge.variant.impact7 aj.id 8
scoreboard players set $aj.meteoric_ore_snipe_charge.variant.impact8 aj.id 9
scoreboard players set $aj.meteoric_ore_snipe_charge.variant.impact9 aj.id 10
scoreboard players set $aj.meteoric_ore_snipe_charge.variant.sword_light aj.id 11
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.meteoric_ore_snipe_charge.export_version aj.i 153860251
scoreboard players reset * aj.meteoric_ore_snipe_charge.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.meteoric_ore_snipe_charge.root] run function animated_java:meteoric_ore_snipe_charge/zzzzzzzz/on_load