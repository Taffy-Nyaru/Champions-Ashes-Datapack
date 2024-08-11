execute as @a[tag=omen_king] at @s if entity @e[team=!friendly,type=!#championsashes:special_entities,distance=..8] run function championsashes:entities/night_cavalry/protect
execute as @a[limit=1] at @s unless entity @e[team=!friendly,type=!#championsashes:special_entities,distance=..8] run tag @e[tag=omen_protected] remove omen_protected

execute as @e[tag=pearl] at @s unless block ~ ~ ~ #championsashes:transparent_blocks run function championsashes:entities/search_air
execute as @e[tag=night_cavalry] at @s unless block ~ ~ ~ #championsashes:transparent_blocks run function championsashes:entities/search_air
execute if entity @e[tag=night_cavalry,advancements={championsashes:enter_block=true}] as @e[tag=pearl] at @s run function championsashes:entities/search_air