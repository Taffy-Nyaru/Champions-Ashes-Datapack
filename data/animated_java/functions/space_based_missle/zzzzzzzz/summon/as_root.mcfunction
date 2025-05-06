execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.space_based_missle.rig_loaded 1
scoreboard players operation @s aj.space_based_missle.export_version = aj.space_based_missle.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:space_based_missle/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.space_based_missle.variant.0 aj.id run function animated_java:space_based_missle/zzzzzzzz/apply_variant/0/as_root
execute if score #variant aj.i = $aj.space_based_missle.variant.1 aj.id run function animated_java:space_based_missle/zzzzzzzz/apply_variant/1/as_root
execute if score #variant aj.i = $aj.space_based_missle.variant.2 aj.id run function animated_java:space_based_missle/zzzzzzzz/apply_variant/2/as_root
execute if score #variant aj.i = $aj.space_based_missle.variant.3 aj.id run function animated_java:space_based_missle/zzzzzzzz/apply_variant/3/as_root
execute if score #variant aj.i = $aj.space_based_missle.variant.4 aj.id run function animated_java:space_based_missle/zzzzzzzz/apply_variant/4/as_root
execute if score #variant aj.i = $aj.space_based_missle.variant.faded aj.id run function animated_java:space_based_missle/zzzzzzzz/apply_variant/faded/as_root
execute if score #variant aj.i = $aj.space_based_missle.variant.missle0 aj.id run function animated_java:space_based_missle/zzzzzzzz/apply_variant/missle0/as_root
execute if score #variant aj.i = $aj.space_based_missle.variant.missle1 aj.id run function animated_java:space_based_missle/zzzzzzzz/apply_variant/missle1/as_root
execute if score #variant aj.i = $aj.space_based_missle.variant.missle3 aj.id run function animated_java:space_based_missle/zzzzzzzz/apply_variant/missle3/as_root
execute if score #variant aj.i = $aj.space_based_missle.variant.missle4 aj.id run function animated_java:space_based_missle/zzzzzzzz/apply_variant/missle4/as_root
execute if score #variant aj.i = $aj.space_based_missle.variant.missle5 aj.id run function animated_java:space_based_missle/zzzzzzzz/apply_variant/missle5/as_root
execute if score #variant aj.i = $aj.space_based_missle.variant.missle6 aj.id run function animated_java:space_based_missle/zzzzzzzz/apply_variant/missle6/as_root
execute if score #variant aj.i = $aj.space_based_missle.variant.missle7 aj.id run function animated_java:space_based_missle/zzzzzzzz/apply_variant/missle7/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.space_based_missle.animation.lockon_target aj.id run function animated_java:space_based_missle/zzzzzzzz/animations/lockon_target/apply_frame_as_root
execute if score #animation aj.i = $aj.space_based_missle.animation.lockon_target aj.id run scoreboard players operation @s aj.space_based_missle.animation.lockon_target.local_anim_time = #frame aj.i
execute at @s run function #animated_java:space_based_missle/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i