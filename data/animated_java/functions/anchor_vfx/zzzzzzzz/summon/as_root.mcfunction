execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.anchor_vfx.rig_loaded 1
scoreboard players operation @s aj.anchor_vfx.export_version = aj.anchor_vfx.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:anchor_vfx/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.anchor_vfx.variant.faded aj.id run function animated_java:anchor_vfx/zzzzzzzz/apply_variant/faded/as_root
execute if score #variant aj.i = $aj.anchor_vfx.variant.anchor0 aj.id run function animated_java:anchor_vfx/zzzzzzzz/apply_variant/anchor0/as_root
execute if score #variant aj.i = $aj.anchor_vfx.variant.anchor1 aj.id run function animated_java:anchor_vfx/zzzzzzzz/apply_variant/anchor1/as_root
execute if score #variant aj.i = $aj.anchor_vfx.variant.anchor2 aj.id run function animated_java:anchor_vfx/zzzzzzzz/apply_variant/anchor2/as_root
execute if score #variant aj.i = $aj.anchor_vfx.variant.anchor3 aj.id run function animated_java:anchor_vfx/zzzzzzzz/apply_variant/anchor3/as_root
execute if score #variant aj.i = $aj.anchor_vfx.variant.anchor4 aj.id run function animated_java:anchor_vfx/zzzzzzzz/apply_variant/anchor4/as_root
execute if score #variant aj.i = $aj.anchor_vfx.variant.anchor5 aj.id run function animated_java:anchor_vfx/zzzzzzzz/apply_variant/anchor5/as_root
execute if score #variant aj.i = $aj.anchor_vfx.variant.anchor6 aj.id run function animated_java:anchor_vfx/zzzzzzzz/apply_variant/anchor6/as_root
execute if score #variant aj.i = $aj.anchor_vfx.variant.anchor7 aj.id run function animated_java:anchor_vfx/zzzzzzzz/apply_variant/anchor7/as_root
execute if score #variant aj.i = $aj.anchor_vfx.variant.fade0 aj.id run function animated_java:anchor_vfx/zzzzzzzz/apply_variant/fade0/as_root
execute if score #variant aj.i = $aj.anchor_vfx.variant.fade1 aj.id run function animated_java:anchor_vfx/zzzzzzzz/apply_variant/fade1/as_root
execute if score #variant aj.i = $aj.anchor_vfx.variant.fade2 aj.id run function animated_java:anchor_vfx/zzzzzzzz/apply_variant/fade2/as_root
execute if score #variant aj.i = $aj.anchor_vfx.variant.fade3 aj.id run function animated_java:anchor_vfx/zzzzzzzz/apply_variant/fade3/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.anchor_vfx.animation.anchor_slash aj.id run function animated_java:anchor_vfx/zzzzzzzz/animations/anchor_slash/apply_frame_as_root
execute if score #animation aj.i = $aj.anchor_vfx.animation.anchor_slash aj.id run scoreboard players operation @s aj.anchor_vfx.animation.anchor_slash.local_anim_time = #frame aj.i
execute at @s run function #animated_java:anchor_vfx/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i
function animated_java:anchor_vfx/animations/anchor_slash/play