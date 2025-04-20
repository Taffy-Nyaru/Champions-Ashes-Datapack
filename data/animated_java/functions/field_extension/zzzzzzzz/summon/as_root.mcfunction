execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.field_extension.rig_loaded 1
scoreboard players operation @s aj.field_extension.export_version = aj.field_extension.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:field_extension/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.field_extension.variant.field_extension_vfx0 aj.id run function animated_java:field_extension/zzzzzzzz/apply_variant/field_extension_vfx0/as_root
execute if score #variant aj.i = $aj.field_extension.variant.blank aj.id run function animated_java:field_extension/zzzzzzzz/apply_variant/blank/as_root
execute if score #variant aj.i = $aj.field_extension.variant.field_extension_vfx1 aj.id run function animated_java:field_extension/zzzzzzzz/apply_variant/field_extension_vfx1/as_root
execute if score #variant aj.i = $aj.field_extension.variant.field_extension_vfx2 aj.id run function animated_java:field_extension/zzzzzzzz/apply_variant/field_extension_vfx2/as_root
execute if score #variant aj.i = $aj.field_extension.variant.field_extension_vfx3 aj.id run function animated_java:field_extension/zzzzzzzz/apply_variant/field_extension_vfx3/as_root
execute if score #variant aj.i = $aj.field_extension.variant.field_extension_vfx4 aj.id run function animated_java:field_extension/zzzzzzzz/apply_variant/field_extension_vfx4/as_root
execute if score #variant aj.i = $aj.field_extension.variant.field_extension_vfx5 aj.id run function animated_java:field_extension/zzzzzzzz/apply_variant/field_extension_vfx5/as_root
execute if score #variant aj.i = $aj.field_extension.variant.field_extension_vfx6 aj.id run function animated_java:field_extension/zzzzzzzz/apply_variant/field_extension_vfx6/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.field_extension.animation.standby aj.id run function animated_java:field_extension/zzzzzzzz/animations/standby/apply_frame_as_root
execute if score #animation aj.i = $aj.field_extension.animation.standby aj.id run scoreboard players operation @s aj.field_extension.animation.standby.local_anim_time = #frame aj.i
execute at @s run function #animated_java:field_extension/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i