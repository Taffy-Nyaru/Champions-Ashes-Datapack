execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.favor_incantations.rig_loaded 1
scoreboard players operation @s aj.favor_incantations.export_version = aj.favor_incantations.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:favor_incantations/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.favor_incantations.variant.lightning_spear0 aj.id run function animated_java:favor_incantations/zzzzzzzz/apply_variant/lightning_spear0/as_root
execute if score #variant aj.i = $aj.favor_incantations.variant.blackhole0 aj.id run function animated_java:favor_incantations/zzzzzzzz/apply_variant/blackhole0/as_root
execute if score #variant aj.i = $aj.favor_incantations.variant.blackhole1 aj.id run function animated_java:favor_incantations/zzzzzzzz/apply_variant/blackhole1/as_root
execute if score #variant aj.i = $aj.favor_incantations.variant.lightning_spear1 aj.id run function animated_java:favor_incantations/zzzzzzzz/apply_variant/lightning_spear1/as_root
execute if score #variant aj.i = $aj.favor_incantations.variant.lightning_spear2 aj.id run function animated_java:favor_incantations/zzzzzzzz/apply_variant/lightning_spear2/as_root
execute if score #variant aj.i = $aj.favor_incantations.variant.red_lightning_spear0 aj.id run function animated_java:favor_incantations/zzzzzzzz/apply_variant/red_lightning_spear0/as_root
execute if score #variant aj.i = $aj.favor_incantations.variant.red_lightning_spear1 aj.id run function animated_java:favor_incantations/zzzzzzzz/apply_variant/red_lightning_spear1/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.favor_incantations.animation.messemers_orb aj.id run function animated_java:favor_incantations/zzzzzzzz/animations/messemers_orb/apply_frame_as_root
execute if score #animation aj.i = $aj.favor_incantations.animation.messemers_orb aj.id run scoreboard players operation @s aj.favor_incantations.animation.messemers_orb.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.favor_incantations.animation.knight_lightning_spear aj.id run function animated_java:favor_incantations/zzzzzzzz/animations/knight_lightning_spear/apply_frame_as_root
execute if score #animation aj.i = $aj.favor_incantations.animation.knight_lightning_spear aj.id run scoreboard players operation @s aj.favor_incantations.animation.knight_lightning_spear.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.favor_incantations.animation.ancient_lightning_spear aj.id run function animated_java:favor_incantations/zzzzzzzz/animations/ancient_lightning_spear/apply_frame_as_root
execute if score #animation aj.i = $aj.favor_incantations.animation.ancient_lightning_spear aj.id run scoreboard players operation @s aj.favor_incantations.animation.ancient_lightning_spear.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.favor_incantations.animation.blinkbolt_slash aj.id run function animated_java:favor_incantations/zzzzzzzz/animations/blinkbolt_slash/apply_frame_as_root
execute if score #animation aj.i = $aj.favor_incantations.animation.blinkbolt_slash aj.id run scoreboard players operation @s aj.favor_incantations.animation.blinkbolt_slash.local_anim_time = #frame aj.i
execute at @s run function #animated_java:favor_incantations/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i