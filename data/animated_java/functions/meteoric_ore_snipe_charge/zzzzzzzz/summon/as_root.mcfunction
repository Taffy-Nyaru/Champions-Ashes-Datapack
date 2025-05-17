execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.meteoric_ore_snipe_charge.rig_loaded 1
scoreboard players operation @s aj.meteoric_ore_snipe_charge.export_version = aj.meteoric_ore_snipe_charge.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:meteoric_ore_snipe_charge/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.meteoric_ore_snipe_charge.variant.sword_no_light aj.id run function animated_java:meteoric_ore_snipe_charge/zzzzzzzz/apply_variant/sword_no_light/as_root
execute if score #variant aj.i = $aj.meteoric_ore_snipe_charge.variant.impact10 aj.id run function animated_java:meteoric_ore_snipe_charge/zzzzzzzz/apply_variant/impact10/as_root
execute if score #variant aj.i = $aj.meteoric_ore_snipe_charge.variant.impact11 aj.id run function animated_java:meteoric_ore_snipe_charge/zzzzzzzz/apply_variant/impact11/as_root
execute if score #variant aj.i = $aj.meteoric_ore_snipe_charge.variant.impact12 aj.id run function animated_java:meteoric_ore_snipe_charge/zzzzzzzz/apply_variant/impact12/as_root
execute if score #variant aj.i = $aj.meteoric_ore_snipe_charge.variant.impact13 aj.id run function animated_java:meteoric_ore_snipe_charge/zzzzzzzz/apply_variant/impact13/as_root
execute if score #variant aj.i = $aj.meteoric_ore_snipe_charge.variant.impact14 aj.id run function animated_java:meteoric_ore_snipe_charge/zzzzzzzz/apply_variant/impact14/as_root
execute if score #variant aj.i = $aj.meteoric_ore_snipe_charge.variant.impact5 aj.id run function animated_java:meteoric_ore_snipe_charge/zzzzzzzz/apply_variant/impact5/as_root
execute if score #variant aj.i = $aj.meteoric_ore_snipe_charge.variant.impact6 aj.id run function animated_java:meteoric_ore_snipe_charge/zzzzzzzz/apply_variant/impact6/as_root
execute if score #variant aj.i = $aj.meteoric_ore_snipe_charge.variant.impact7 aj.id run function animated_java:meteoric_ore_snipe_charge/zzzzzzzz/apply_variant/impact7/as_root
execute if score #variant aj.i = $aj.meteoric_ore_snipe_charge.variant.impact8 aj.id run function animated_java:meteoric_ore_snipe_charge/zzzzzzzz/apply_variant/impact8/as_root
execute if score #variant aj.i = $aj.meteoric_ore_snipe_charge.variant.impact9 aj.id run function animated_java:meteoric_ore_snipe_charge/zzzzzzzz/apply_variant/impact9/as_root
execute if score #variant aj.i = $aj.meteoric_ore_snipe_charge.variant.sword_light aj.id run function animated_java:meteoric_ore_snipe_charge/zzzzzzzz/apply_variant/sword_light/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.meteoric_ore_snipe_charge.animation.meteoric_snipe_charge aj.id run function animated_java:meteoric_ore_snipe_charge/zzzzzzzz/animations/meteoric_snipe_charge/apply_frame_as_root
execute if score #animation aj.i = $aj.meteoric_ore_snipe_charge.animation.meteoric_snipe_charge aj.id run scoreboard players operation @s aj.meteoric_ore_snipe_charge.animation.meteoric_snipe_charge.local_anim_time = #frame aj.i
execute at @s run function #animated_java:meteoric_ore_snipe_charge/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i