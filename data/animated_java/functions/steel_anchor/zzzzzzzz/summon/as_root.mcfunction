execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.steel_anchor.rig_loaded 1
scoreboard players operation @s aj.steel_anchor.export_version = aj.steel_anchor.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:steel_anchor/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.steel_anchor.variant.default aj.id run function animated_java:steel_anchor/zzzzzzzz/apply_variant/default/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.steel_anchor.animation.throw_anchor aj.id run function animated_java:steel_anchor/zzzzzzzz/animations/throw_anchor/apply_frame_as_root
execute if score #animation aj.i = $aj.steel_anchor.animation.throw_anchor aj.id run scoreboard players operation @s aj.steel_anchor.animation.throw_anchor.local_anim_time = #frame aj.i
execute at @s run function #animated_java:steel_anchor/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i