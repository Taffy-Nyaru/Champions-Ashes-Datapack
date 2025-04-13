tag @a[limit=1,sort=nearest,tag=anchor_skill3] add skill3_anchor_hit
execute at @e[tag=aj.steel_anchor.locator,limit=1,tag=!player_camera] run tp @a[limit=1,sort=nearest,tag=anchor_skill3] ^ ^ ^

execute at @e[tag=aj.steel_anchor.locator,limit=1,tag=!player_camera] positioned ^ ^ ^2.5 unless entity @e[tag=aj.water_explode.root,distance=..1] facing ~ ~ ~ run function animated_java:water_explode/summon
execute as @e[distance=..10,tag=!bomber,type=!#championsashes:special_entities,predicate=!championsashes:using_item/steel_anchor_right] at @s facing ~ ~ ~ run function championsashes:items/steel_anchor/skill3_anchor_hit_entity

execute as @e[tag=aj.water_explode.root] run function animated_java:water_explode/animations/water_explode/play

execute at @e[tag=aj.steel_anchor.locator,limit=1,tag=!player_camera] unless entity @e[type=creeper,tag=bomber,distance=..2] run summon creeper ~ ~ ~ {Invulnerable:1b,Fuse:0,powered:1b,Tags:["bomber"]}

execute as @a[limit=1,sort=nearest,tag=anchor_skill3] run function championsashes:animated_effects/ride_off
execute as @a[limit=1,sort=nearest,tag=anchor_skill3] at @s unless block ~ ~4 ~ air unless block ~ ~4 ~ water run function championsashes:items/steel_anchor/back_to_inplace

function animated_java:steel_anchor/remove/all
kill @e[tag=aj.steel_anchor.locator,limit=1,tag=!player_camera]
kill @e[tag=player_camera]