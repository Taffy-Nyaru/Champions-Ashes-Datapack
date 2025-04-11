execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.water_vfx.rig_loaded 1
scoreboard players operation @s aj.water_vfx.export_version = aj.water_vfx.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:water_vfx/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.water_vfx.variant.default aj.id run function animated_java:water_vfx/zzzzzzzz/apply_variant/default/as_root
execute if score #variant aj.i = $aj.water_vfx.variant.fade0 aj.id run function animated_java:water_vfx/zzzzzzzz/apply_variant/fade0/as_root
execute if score #variant aj.i = $aj.water_vfx.variant.fade1 aj.id run function animated_java:water_vfx/zzzzzzzz/apply_variant/fade1/as_root
execute if score #variant aj.i = $aj.water_vfx.variant.fade2 aj.id run function animated_java:water_vfx/zzzzzzzz/apply_variant/fade2/as_root
execute if score #variant aj.i = $aj.water_vfx.variant.fade3 aj.id run function animated_java:water_vfx/zzzzzzzz/apply_variant/fade3/as_root
execute if score #variant aj.i = $aj.water_vfx.variant.faded aj.id run function animated_java:water_vfx/zzzzzzzz/apply_variant/faded/as_root
execute if score #variant aj.i = $aj.water_vfx.variant.water_wall1 aj.id run function animated_java:water_vfx/zzzzzzzz/apply_variant/water_wall1/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.water_vfx.animation.water_vfx aj.id run function animated_java:water_vfx/zzzzzzzz/animations/water_vfx/apply_frame_as_root
execute if score #animation aj.i = $aj.water_vfx.animation.water_vfx aj.id run scoreboard players operation @s aj.water_vfx.animation.water_vfx.local_anim_time = #frame aj.i
execute at @s run function #animated_java:water_vfx/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i
function animated_java:water_vfx/animations/water_vfx/play