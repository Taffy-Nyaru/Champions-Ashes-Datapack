tag @s add anchor_skill3
tag @s add riding_display

summon marker ~ ~ ~ {UUID:[I;119,810,114,514]}

effect give @s resistance 150 3
effect give @s regeneration 150 5
effect give @s dolphins_grace 150 9
effect give @s water_breathing 150 1
effect give @s fire_resistance 150 1

attribute @s minecraft:generic.max_health modifier add c4a21ec2-2dc0-447c-955a-15fa6fe0bd6e max_health 0.8 multiply_base
attribute @s minecraft:generic.attack_damage modifier add c9a21ec2-2dc0-447c-955a-15fa6fe0bd60 damage 2.6 multiply_base

tag @s[tag=animated_got_gamemode] remove animated_got_gamemode
execute store result score @s gamemode run data get entity @s playerGameType

execute at @s facing ~ ~ ~ run function animated_java:water_vfx/summon
execute at @s positioned ^ ^ ^ run function animated_java:steel_anchor/summon
execute as @e[tag=aj.steel_anchor.root,limit=1,sort=nearest] run function animated_java:steel_anchor/animations/throw_anchor/play

execute as @s[gamemode=survival] run function championsashes:items/item_durability