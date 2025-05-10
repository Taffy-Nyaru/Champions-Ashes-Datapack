function animated_java:anchor_vfx/summon
execute as @e[distance=..30,type=item_display,tag=aj.anchor_vfx.root] run function animated_java:anchor_vfx/animations/anchor_slash/play
tag @s add stiff
scoreboard players set @s custom_ca.entity.stiff_time 10
effect give @s minecraft:slowness 2 1