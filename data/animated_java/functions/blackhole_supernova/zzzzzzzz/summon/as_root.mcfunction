execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.blackhole_supernova.rig_loaded 1
scoreboard players operation @s aj.blackhole_supernova.export_version = aj.blackhole_supernova.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:blackhole_supernova/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.blackhole_supernova.variant.0 aj.id run function animated_java:blackhole_supernova/zzzzzzzz/apply_variant/0/as_root
execute if score #variant aj.i = $aj.blackhole_supernova.variant.1 aj.id run function animated_java:blackhole_supernova/zzzzzzzz/apply_variant/1/as_root
execute if score #variant aj.i = $aj.blackhole_supernova.variant.2 aj.id run function animated_java:blackhole_supernova/zzzzzzzz/apply_variant/2/as_root
execute if score #variant aj.i = $aj.blackhole_supernova.variant.3 aj.id run function animated_java:blackhole_supernova/zzzzzzzz/apply_variant/3/as_root
execute if score #variant aj.i = $aj.blackhole_supernova.variant.4 aj.id run function animated_java:blackhole_supernova/zzzzzzzz/apply_variant/4/as_root
execute if score #variant aj.i = $aj.blackhole_supernova.variant.5 aj.id run function animated_java:blackhole_supernova/zzzzzzzz/apply_variant/5/as_root
execute if score #variant aj.i = $aj.blackhole_supernova.variant.vfx1 aj.id run function animated_java:blackhole_supernova/zzzzzzzz/apply_variant/vfx1/as_root
execute if score #variant aj.i = $aj.blackhole_supernova.variant.vfx2 aj.id run function animated_java:blackhole_supernova/zzzzzzzz/apply_variant/vfx2/as_root
execute if score #variant aj.i = $aj.blackhole_supernova.variant.vortex_fade0 aj.id run function animated_java:blackhole_supernova/zzzzzzzz/apply_variant/vortex_fade0/as_root
execute if score #variant aj.i = $aj.blackhole_supernova.variant.vortex_fade1 aj.id run function animated_java:blackhole_supernova/zzzzzzzz/apply_variant/vortex_fade1/as_root
execute if score #variant aj.i = $aj.blackhole_supernova.variant.vortex_fade2 aj.id run function animated_java:blackhole_supernova/zzzzzzzz/apply_variant/vortex_fade2/as_root
execute if score #variant aj.i = $aj.blackhole_supernova.variant.vortex_vfx0 aj.id run function animated_java:blackhole_supernova/zzzzzzzz/apply_variant/vortex_vfx0/as_root
execute if score #variant aj.i = $aj.blackhole_supernova.variant.vortex_vfx1 aj.id run function animated_java:blackhole_supernova/zzzzzzzz/apply_variant/vortex_vfx1/as_root
execute if score #variant aj.i = $aj.blackhole_supernova.variant.vortex_vfx2 aj.id run function animated_java:blackhole_supernova/zzzzzzzz/apply_variant/vortex_vfx2/as_root
execute if score #variant aj.i = $aj.blackhole_supernova.variant.vortex_vfx3 aj.id run function animated_java:blackhole_supernova/zzzzzzzz/apply_variant/vortex_vfx3/as_root
execute if score #variant aj.i = $aj.blackhole_supernova.variant.vortex_vfx4 aj.id run function animated_java:blackhole_supernova/zzzzzzzz/apply_variant/vortex_vfx4/as_root
execute if score #variant aj.i = $aj.blackhole_supernova.variant.vortex_vfx5 aj.id run function animated_java:blackhole_supernova/zzzzzzzz/apply_variant/vortex_vfx5/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.blackhole_supernova.animation.blackhole_supernova aj.id run function animated_java:blackhole_supernova/zzzzzzzz/animations/blackhole_supernova/apply_frame_as_root
execute if score #animation aj.i = $aj.blackhole_supernova.animation.blackhole_supernova aj.id run scoreboard players operation @s aj.blackhole_supernova.animation.blackhole_supernova.local_anim_time = #frame aj.i
execute at @s run function #animated_java:blackhole_supernova/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i