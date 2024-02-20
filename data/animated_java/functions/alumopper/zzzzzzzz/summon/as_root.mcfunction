execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.alumopper.rig_loaded 1
scoreboard players operation @s aj.alumopper.export_version = aj.alumopper.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:alumopper/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.alumopper.variant.default aj.id run function animated_java:alumopper/zzzzzzzz/apply_variant/default/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.alumopper.animation.animation.alumopper.wavehand aj.id run function animated_java:alumopper/zzzzzzzz/animations/animation.alumopper.wavehand/apply_frame_as_root
execute if score #animation aj.i = $aj.alumopper.animation.animation.alumopper.wavehand aj.id run scoreboard players operation @s aj.alumopper.animation.animation.alumopper.wavehand.local_anim_time = #frame aj.i
execute at @s run function #animated_java:alumopper/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i

data modify entity @s Rotation[1] set value 0.0f
execute store result score @s rotation run data get entity @s Rotation[0]
execute if score @s rotation matches 45..135 run data modify entity @s Rotation[0] set value -90.0f
execute if score @s rotation matches 135..180 run data modify entity @s Rotation[0] set value 0.0f
execute if score @s rotation matches -45..45 run data modify entity @s Rotation[0] set value 180.0f
execute if score @s rotation matches -135..-45 run data modify entity @s Rotation[0] set value 90.0f
#data modify entity @s Rotation set from entity @a[limit=1,sort=nearest,predicate=ldmc:using_item/alumopper] Rotation