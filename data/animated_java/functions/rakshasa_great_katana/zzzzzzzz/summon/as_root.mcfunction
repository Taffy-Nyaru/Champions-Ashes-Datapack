execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.rakshasa_great_katana.rig_loaded 1
scoreboard players operation @s aj.rakshasa_great_katana.export_version = aj.rakshasa_great_katana.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:rakshasa_great_katana/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.rakshasa_great_katana.variant.default aj.id run function animated_java:rakshasa_great_katana/zzzzzzzz/apply_variant/default/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.rakshasa_great_katana.animation.weed_cutter aj.id run function animated_java:rakshasa_great_katana/zzzzzzzz/animations/weed_cutter/apply_frame_as_root
execute if score #animation aj.i = $aj.rakshasa_great_katana.animation.weed_cutter aj.id run scoreboard players operation @s aj.rakshasa_great_katana.animation.weed_cutter.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.rakshasa_great_katana.animation.crouch_poke aj.id run function animated_java:rakshasa_great_katana/zzzzzzzz/animations/crouch_poke/apply_frame_as_root
execute if score #animation aj.i = $aj.rakshasa_great_katana.animation.crouch_poke aj.id run scoreboard players operation @s aj.rakshasa_great_katana.animation.crouch_poke.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.rakshasa_great_katana.animation.heavy_jump aj.id run function animated_java:rakshasa_great_katana/zzzzzzzz/animations/heavy_jump/apply_frame_as_root
execute if score #animation aj.i = $aj.rakshasa_great_katana.animation.heavy_jump aj.id run scoreboard players operation @s aj.rakshasa_great_katana.animation.heavy_jump.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.rakshasa_great_katana.animation.rakshasa_r1 aj.id run function animated_java:rakshasa_great_katana/zzzzzzzz/animations/rakshasa_r1/apply_frame_as_root
execute if score #animation aj.i = $aj.rakshasa_great_katana.animation.rakshasa_r1 aj.id run scoreboard players operation @s aj.rakshasa_great_katana.animation.rakshasa_r1.local_anim_time = #frame aj.i
execute at @s run function #animated_java:rakshasa_great_katana/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i