execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.shadow_golem.rig_loaded 1
scoreboard players operation @s aj.shadow_golem.export_version = aj.shadow_golem.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:shadow_golem/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.shadow_golem.variant.default aj.id run function animated_java:shadow_golem/zzzzzzzz/apply_variant/default/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.shadow_golem.animation.walk aj.id run function animated_java:shadow_golem/zzzzzzzz/animations/walk/apply_frame_as_root
execute if score #animation aj.i = $aj.shadow_golem.animation.walk aj.id run scoreboard players operation @s aj.shadow_golem.animation.walk.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.shadow_golem.animation.run aj.id run function animated_java:shadow_golem/zzzzzzzz/animations/run/apply_frame_as_root
execute if score #animation aj.i = $aj.shadow_golem.animation.run aj.id run scoreboard players operation @s aj.shadow_golem.animation.run.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.shadow_golem.animation.attack_smashing aj.id run function animated_java:shadow_golem/zzzzzzzz/animations/attack_smashing/apply_frame_as_root
execute if score #animation aj.i = $aj.shadow_golem.animation.attack_smashing aj.id run scoreboard players operation @s aj.shadow_golem.animation.attack_smashing.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.shadow_golem.animation.attack_black_hole aj.id run function animated_java:shadow_golem/zzzzzzzz/animations/attack_black_hole/apply_frame_as_root
execute if score #animation aj.i = $aj.shadow_golem.animation.attack_black_hole aj.id run scoreboard players operation @s aj.shadow_golem.animation.attack_black_hole.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.shadow_golem.animation.attack_right_hand aj.id run function animated_java:shadow_golem/zzzzzzzz/animations/attack_right_hand/apply_frame_as_root
execute if score #animation aj.i = $aj.shadow_golem.animation.attack_right_hand aj.id run scoreboard players operation @s aj.shadow_golem.animation.attack_right_hand.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.shadow_golem.animation.attack_left_hand aj.id run function animated_java:shadow_golem/zzzzzzzz/animations/attack_left_hand/apply_frame_as_root
execute if score #animation aj.i = $aj.shadow_golem.animation.attack_left_hand aj.id run scoreboard players operation @s aj.shadow_golem.animation.attack_left_hand.local_anim_time = #frame aj.i
execute at @s run function #animated_java:shadow_golem/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i