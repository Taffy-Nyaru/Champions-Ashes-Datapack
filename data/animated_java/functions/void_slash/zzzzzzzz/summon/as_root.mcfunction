execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.void_slash.rig_loaded 1
scoreboard players operation @s aj.void_slash.export_version = aj.void_slash.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:void_slash/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.void_slash.variant.void_slash aj.id run function animated_java:void_slash/zzzzzzzz/apply_variant/void_slash/as_root
execute if score #variant aj.i = $aj.void_slash.variant.slash0 aj.id run function animated_java:void_slash/zzzzzzzz/apply_variant/slash0/as_root
execute if score #variant aj.i = $aj.void_slash.variant.slash1 aj.id run function animated_java:void_slash/zzzzzzzz/apply_variant/slash1/as_root
execute if score #variant aj.i = $aj.void_slash.variant.slash2 aj.id run function animated_java:void_slash/zzzzzzzz/apply_variant/slash2/as_root
execute if score #variant aj.i = $aj.void_slash.variant.slash3 aj.id run function animated_java:void_slash/zzzzzzzz/apply_variant/slash3/as_root
execute if score #variant aj.i = $aj.void_slash.variant.slash4 aj.id run function animated_java:void_slash/zzzzzzzz/apply_variant/slash4/as_root
execute if score #variant aj.i = $aj.void_slash.variant.slash5 aj.id run function animated_java:void_slash/zzzzzzzz/apply_variant/slash5/as_root
execute if score #variant aj.i = $aj.void_slash.variant.slash6 aj.id run function animated_java:void_slash/zzzzzzzz/apply_variant/slash6/as_root
execute if score #variant aj.i = $aj.void_slash.variant.slash7 aj.id run function animated_java:void_slash/zzzzzzzz/apply_variant/slash7/as_root
execute if score #variant aj.i = $aj.void_slash.variant.slash8 aj.id run function animated_java:void_slash/zzzzzzzz/apply_variant/slash8/as_root
execute if score #variant aj.i = $aj.void_slash.variant.slashing0 aj.id run function animated_java:void_slash/zzzzzzzz/apply_variant/slashing0/as_root
execute if score #variant aj.i = $aj.void_slash.variant.slashing1 aj.id run function animated_java:void_slash/zzzzzzzz/apply_variant/slashing1/as_root
execute if score #variant aj.i = $aj.void_slash.variant.slashing2 aj.id run function animated_java:void_slash/zzzzzzzz/apply_variant/slashing2/as_root
execute if score #variant aj.i = $aj.void_slash.variant.slashing3 aj.id run function animated_java:void_slash/zzzzzzzz/apply_variant/slashing3/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.void_slash.animation.void_slash aj.id run function animated_java:void_slash/zzzzzzzz/animations/void_slash/apply_frame_as_root
execute if score #animation aj.i = $aj.void_slash.animation.void_slash aj.id run scoreboard players operation @s aj.void_slash.animation.void_slash.local_anim_time = #frame aj.i
execute at @s run function #animated_java:void_slash/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i