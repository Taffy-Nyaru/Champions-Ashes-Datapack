execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.murky_hand_scythe.rig_loaded 1
scoreboard players operation @s aj.murky_hand_scythe.export_version = aj.murky_hand_scythe.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:murky_hand_scythe/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.murky_hand_scythe.variant.default aj.id run function animated_java:murky_hand_scythe/zzzzzzzz/apply_variant/default/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.murky_hand_scythe.animation.soul_five aj.id run function animated_java:murky_hand_scythe/zzzzzzzz/animations/soul_five/apply_frame_as_root
execute if score #animation aj.i = $aj.murky_hand_scythe.animation.soul_five aj.id run scoreboard players operation @s aj.murky_hand_scythe.animation.soul_five.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.murky_hand_scythe.animation.murky_r1 aj.id run function animated_java:murky_hand_scythe/zzzzzzzz/animations/murky_r1/apply_frame_as_root
execute if score #animation aj.i = $aj.murky_hand_scythe.animation.murky_r1 aj.id run scoreboard players operation @s aj.murky_hand_scythe.animation.murky_r1.local_anim_time = #frame aj.i
execute at @s run function #animated_java:murky_hand_scythe/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i