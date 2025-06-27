tag @s add ice_crystal_user
tag @e[type=!#championsashes:special_entities,tag=!ice_crystal_user,distance=..10,limit=5,tag=!ice_crystallized,sort=nearest] add ice_crystallized

execute as @e[type=!#championsashes:special_entities,tag=ice_crystallized] at @s run function championsashes:items/moonlight_greatsword/ice_crystallized
execute as @e[tag=ice_crystallized] at @s facing ~ ~ ~ run function animated_java:ice_crystal/summon
execute as @e[tag=aj.ice_crystal.root] run function animated_java:ice_crystal/animations/ice_crystallization/play

execute as @s[gamemode=survival] run function championsashes:items/item_durability