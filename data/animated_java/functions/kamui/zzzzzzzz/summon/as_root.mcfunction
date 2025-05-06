execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.kamui.rig_loaded 1
scoreboard players operation @s aj.kamui.export_version = aj.kamui.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:kamui/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.kamui.variant.default aj.id run function animated_java:kamui/zzzzzzzz/apply_variant/default/as_root
execute if score #variant aj.i = $aj.kamui.variant.0 aj.id run function animated_java:kamui/zzzzzzzz/apply_variant/0/as_root
execute if score #variant aj.i = $aj.kamui.variant.1 aj.id run function animated_java:kamui/zzzzzzzz/apply_variant/1/as_root
execute if score #variant aj.i = $aj.kamui.variant.3 aj.id run function animated_java:kamui/zzzzzzzz/apply_variant/3/as_root
execute if score #variant aj.i = $aj.kamui.variant.4 aj.id run function animated_java:kamui/zzzzzzzz/apply_variant/4/as_root
execute if score #variant aj.i = $aj.kamui.variant.5 aj.id run function animated_java:kamui/zzzzzzzz/apply_variant/5/as_root
execute if score #variant aj.i = $aj.kamui.variant.6 aj.id run function animated_java:kamui/zzzzzzzz/apply_variant/6/as_root
execute if score #variant aj.i = $aj.kamui.variant.7 aj.id run function animated_java:kamui/zzzzzzzz/apply_variant/7/as_root
execute if score #variant aj.i = $aj.kamui.variant.8 aj.id run function animated_java:kamui/zzzzzzzz/apply_variant/8/as_root
execute if score #variant aj.i = $aj.kamui.variant.9 aj.id run function animated_java:kamui/zzzzzzzz/apply_variant/9/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.kamui.animation.kamui aj.id run function animated_java:kamui/zzzzzzzz/animations/kamui/apply_frame_as_root
execute if score #animation aj.i = $aj.kamui.animation.kamui aj.id run scoreboard players operation @s aj.kamui.animation.kamui.local_anim_time = #frame aj.i
execute at @s run function #animated_java:kamui/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i