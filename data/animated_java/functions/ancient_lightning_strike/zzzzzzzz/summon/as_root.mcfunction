execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.ancient_lightning_strike.rig_loaded 1
scoreboard players operation @s aj.ancient_lightning_strike.export_version = aj.ancient_lightning_strike.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:ancient_lightning_strike/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.ancient_lightning_strike.variant.lightning_bolt0 aj.id run function animated_java:ancient_lightning_strike/zzzzzzzz/apply_variant/lightning_bolt0/as_root
execute if score #variant aj.i = $aj.ancient_lightning_strike.variant.lightning_bolt1 aj.id run function animated_java:ancient_lightning_strike/zzzzzzzz/apply_variant/lightning_bolt1/as_root
execute if score #variant aj.i = $aj.ancient_lightning_strike.variant.lightning_bolt2 aj.id run function animated_java:ancient_lightning_strike/zzzzzzzz/apply_variant/lightning_bolt2/as_root
execute if score #variant aj.i = $aj.ancient_lightning_strike.variant.lightning_bolt3 aj.id run function animated_java:ancient_lightning_strike/zzzzzzzz/apply_variant/lightning_bolt3/as_root
execute if score #variant aj.i = $aj.ancient_lightning_strike.variant.lightning_bolt4 aj.id run function animated_java:ancient_lightning_strike/zzzzzzzz/apply_variant/lightning_bolt4/as_root
execute if score #variant aj.i = $aj.ancient_lightning_strike.variant.warning aj.id run function animated_java:ancient_lightning_strike/zzzzzzzz/apply_variant/warning/as_root
execute if score #variant aj.i = $aj.ancient_lightning_strike.variant.warning_0 aj.id run function animated_java:ancient_lightning_strike/zzzzzzzz/apply_variant/warning_0/as_root
execute if score #variant aj.i = $aj.ancient_lightning_strike.variant.warning_1 aj.id run function animated_java:ancient_lightning_strike/zzzzzzzz/apply_variant/warning_1/as_root
execute if score #variant aj.i = $aj.ancient_lightning_strike.variant.warning_2 aj.id run function animated_java:ancient_lightning_strike/zzzzzzzz/apply_variant/warning_2/as_root
execute if score #variant aj.i = $aj.ancient_lightning_strike.variant.warning_3 aj.id run function animated_java:ancient_lightning_strike/zzzzzzzz/apply_variant/warning_3/as_root
execute if score #variant aj.i = $aj.ancient_lightning_strike.variant.warning0 aj.id run function animated_java:ancient_lightning_strike/zzzzzzzz/apply_variant/warning0/as_root
execute if score #variant aj.i = $aj.ancient_lightning_strike.variant.warning1 aj.id run function animated_java:ancient_lightning_strike/zzzzzzzz/apply_variant/warning1/as_root
execute if score #variant aj.i = $aj.ancient_lightning_strike.variant.warning2 aj.id run function animated_java:ancient_lightning_strike/zzzzzzzz/apply_variant/warning2/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.ancient_lightning_strike.animation.ancient_lightning_strike aj.id run function animated_java:ancient_lightning_strike/zzzzzzzz/animations/ancient_lightning_strike/apply_frame_as_root
execute if score #animation aj.i = $aj.ancient_lightning_strike.animation.ancient_lightning_strike aj.id run scoreboard players operation @s aj.ancient_lightning_strike.animation.ancient_lightning_strike.local_anim_time = #frame aj.i
execute at @s run function #animated_java:ancient_lightning_strike/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i