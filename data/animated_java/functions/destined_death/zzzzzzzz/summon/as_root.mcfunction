execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.destined_death.rig_loaded 1
scoreboard players operation @s aj.destined_death.export_version = aj.destined_death.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:destined_death/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.destined_death.variant.default aj.id run function animated_java:destined_death/zzzzzzzz/apply_variant/default/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.destined_death.animation.destined_death aj.id run function animated_java:destined_death/zzzzzzzz/animations/destined_death/apply_frame_as_root
execute if score #animation aj.i = $aj.destined_death.animation.destined_death aj.id run scoreboard players operation @s aj.destined_death.animation.destined_death.local_anim_time = #frame aj.i
execute at @s run function #animated_java:destined_death/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i