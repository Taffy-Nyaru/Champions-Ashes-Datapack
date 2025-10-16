execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.cheat_engine.rig_loaded 1
scoreboard players operation @s aj.cheat_engine.export_version = aj.cheat_engine.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:cheat_engine/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.cheat_engine.variant.default aj.id run function animated_java:cheat_engine/zzzzzzzz/apply_variant/default/as_root
execute if score #variant aj.i = $aj.cheat_engine.variant.0 aj.id run function animated_java:cheat_engine/zzzzzzzz/apply_variant/0/as_root
execute if score #variant aj.i = $aj.cheat_engine.variant.new_variant aj.id run function animated_java:cheat_engine/zzzzzzzz/apply_variant/new_variant/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.cheat_engine.animation.cheat_engine aj.id run function animated_java:cheat_engine/zzzzzzzz/animations/cheat_engine/apply_frame_as_root
execute if score #animation aj.i = $aj.cheat_engine.animation.cheat_engine aj.id run scoreboard players operation @s aj.cheat_engine.animation.cheat_engine.local_anim_time = #frame aj.i
execute at @s run function #animated_java:cheat_engine/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i