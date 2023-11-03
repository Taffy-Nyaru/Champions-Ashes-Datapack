execute as @a[tag=omen_king] at @s if entity @e[team=!friendly,type=!armor_stand,distance=..8] run function ldmc:entities/night_cavalry/protect
execute as @a[limit=1] at @s unless entity @e[team=!friendly,type=!armor_stand,distance=..8] run tag @e[tag=omen_protected] remove omen_protected

execute as @e[tag=pearl] at @s unless block ~ ~1 ~ air unless block ~ ~1 ~ water unless block ~ ~1 ~ lava run function ldmc:entities/search_air
execute as @e[tag=night_cavalry] at @s unless block ~ ~1 ~ air unless block ~ ~1 ~ water unless block ~ ~1 ~ lava run function ldmc:entities/search_air
execute at @e[tag=night_cavalry] unless block ~ ~1 ~ air unless block ~ ~1 ~ water unless block ~ ~1 ~ lava as @e[tag=pearl] at @s run function ldmc:entities/search_air