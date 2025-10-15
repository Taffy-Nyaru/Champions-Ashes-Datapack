execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.nep_gravity_lightning_bolt.rig_loaded 1
scoreboard players operation @s aj.nep_gravity_lightning_bolt.export_version = aj.nep_gravity_lightning_bolt.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:nep_gravity_lightning_bolt/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.nep_gravity_lightning_bolt.variant.0 aj.id run function animated_java:nep_gravity_lightning_bolt/zzzzzzzz/apply_variant/0/as_root
execute if score #variant aj.i = $aj.nep_gravity_lightning_bolt.variant.1 aj.id run function animated_java:nep_gravity_lightning_bolt/zzzzzzzz/apply_variant/1/as_root
execute if score #variant aj.i = $aj.nep_gravity_lightning_bolt.variant.2 aj.id run function animated_java:nep_gravity_lightning_bolt/zzzzzzzz/apply_variant/2/as_root
execute if score #variant aj.i = $aj.nep_gravity_lightning_bolt.variant.3 aj.id run function animated_java:nep_gravity_lightning_bolt/zzzzzzzz/apply_variant/3/as_root
execute if score #variant aj.i = $aj.nep_gravity_lightning_bolt.variant.4 aj.id run function animated_java:nep_gravity_lightning_bolt/zzzzzzzz/apply_variant/4/as_root
execute if score #variant aj.i = $aj.nep_gravity_lightning_bolt.variant.5 aj.id run function animated_java:nep_gravity_lightning_bolt/zzzzzzzz/apply_variant/5/as_root
execute if score #variant aj.i = $aj.nep_gravity_lightning_bolt.variant.6 aj.id run function animated_java:nep_gravity_lightning_bolt/zzzzzzzz/apply_variant/6/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.nep_gravity_lightning_bolt.animation.nep_gravity_lightning_bolt aj.id run function animated_java:nep_gravity_lightning_bolt/zzzzzzzz/animations/nep_gravity_lightning_bolt/apply_frame_as_root
execute if score #animation aj.i = $aj.nep_gravity_lightning_bolt.animation.nep_gravity_lightning_bolt aj.id run scoreboard players operation @s aj.nep_gravity_lightning_bolt.animation.nep_gravity_lightning_bolt.local_anim_time = #frame aj.i
execute at @s run function #animated_java:nep_gravity_lightning_bolt/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i