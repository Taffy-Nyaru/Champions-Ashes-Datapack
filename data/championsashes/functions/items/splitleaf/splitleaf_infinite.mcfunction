scoreboard players add @s splitleaf_infiniteTimer 1
execute if score @s splitleaf_infiniteTimer matches ..20 as @e[type=!#championsashes:special_entities,distance=..5,tag=!splitleaf_skill,tag=!helicopter,tag=!ally] run scoreboard players set @s custom_stiff_time 15
execute if score @s splitleaf_infiniteTimer matches ..20 as @e[type=!#championsashes:special_entities,distance=..5,tag=!splitleaf_skill,tag=!helicopter,tag=!ally] run tag @s add stiff
execute if score @s splitleaf_infiniteTimer matches 20.. run tag @s remove splitleaf_infinite
execute if score @s splitleaf_infiniteTimer matches 20.. run scoreboard players set @s splitleaf_infiniteTimer 0