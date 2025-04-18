#gamerule mobGriefing false

tag @a[limit=1,sort=nearest,tag=anchor_skill3] add skill3_anchor_hit
execute as @e[tag=aj.steel_anchor.root] run function animated_java:steel_anchor/animations/pause_all

execute at @e[tag=aj.steel_anchor.locator,limit=1,tag=!player_camera] run tp @a[limit=1,sort=nearest,tag=anchor_skill3] ^ ^ ^

execute at @e[tag=aj.steel_anchor.locator,limit=1,tag=!player_camera] positioned ^ ^ ^2.5 unless entity @e[tag=aj.water_explode.root,distance=..1] facing ~ ~ ~ run function animated_java:water_explode/summon
execute as @e[distance=..10,tag=!bomber,type=!#championsashes:special_entities,predicate=!championsashes:using_item/steel_anchor_right] at @s facing ~ ~ ~ run function championsashes:items/steel_anchor/skill3_anchor_hit_entity

execute as @e[tag=aj.water_explode.root] run function animated_java:water_explode/animations/water_explode/play

execute at @e[tag=aj.steel_anchor.locator,limit=1,tag=!player_camera] run summon creeper ~ ~ ~ {Invulnerable:1b,Fuse:0,powered:1b,Tags:["bomber"],ExplosionRadius:3}

execute as @a[limit=1,sort=nearest,tag=anchor_skill3] run function championsashes:animated_effects/ride_off

function animated_java:steel_anchor/remove/all
kill @e[tag=aj.steel_anchor.locator,limit=1,tag=!player_camera]
kill @e[tag=player_camera]

#execute as @a[limit=1,sort=nearest,tag=anchor_skill3] at @s unless block ~ ~ ~ air unless block ~ ~ ~ water run setblock ~ ~ ~ air replace
#execute as @a[limit=1,sort=nearest,tag=anchor_skill3] at @s unless block ~ ~1 ~ air unless block ~ ~1 ~ water run setblock ~ ~1 ~ air replace
execute as @a[limit=1,sort=nearest,tag=anchor_skill3] at @s unless block ~ ~6 ~ air unless block ~ ~6 ~ water run function championsashes:items/steel_anchor/back_to_inplace
execute as @a[limit=1,sort=nearest,tag=anchor_skill3] at @s unless block ~ ~5 ~ air unless block ~ ~5 ~ water run function championsashes:items/steel_anchor/back_to_inplace

kill 00000077-0000-032a-0000-007200000202
#gamerule mobGriefing true