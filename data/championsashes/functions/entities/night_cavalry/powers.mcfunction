execute as @s[tag=omen_king] if entity @e[team=!friendly,type=!#championsashes:special_entities,distance=..8] run function championsashes:entities/night_cavalry/protect
execute as @s[tag=omen_king] unless entity @e[team=!friendly,type=!#championsashes:special_entities,distance=..8] run tag @e[type=wither_skeleton,distance=..15,tag=omen_protected] remove omen_protected

execute as @e[type=skeleton_horse,distance=..15,tag=pearl] at @s unless block ~ ~ ~ #championsashes:transparent_blocks run function championsashes:entities/search_air
execute as @e[type=wither_skeleton,distance=..15,tag=night_cavalry] at @s unless block ~ ~ ~ #championsashes:transparent_blocks run function championsashes:entities/search_air
execute if entity @e[type=wither_skeleton,distance=..15,tag=night_cavalry,advancements={championsashes:enter_block=true}] as @e[type=skeleton_horse,distance=..15,tag=pearl] at @s run function championsashes:entities/search_air