execute as @a[tag=omen_king] at @s if entity @e[team=!friendly,type=!#ldmc:special_entities,distance=..8] run function ldmc:entities/night_cavalry/protect
execute as @a[limit=1] at @s unless entity @e[team=!friendly,type=!#ldmc:special_entities,distance=..8] run tag @e[tag=omen_protected] remove omen_protected

execute as @e[tag=pearl] at @s unless block ~ ~1 ~ air unless block ~ ~1 ~ water unless block ~ ~1 ~ lava run function ldmc:entities/search_air
execute as @e[tag=night_cavalry,advancements={ldmc:enter_block=true}] at @s run function ldmc:entities/search_air
execute if entity @e[tag=night_cavalry,advancements={ldmc:enter_block=true}] as @e[tag=pearl] at @s run function ldmc:entities/search_air