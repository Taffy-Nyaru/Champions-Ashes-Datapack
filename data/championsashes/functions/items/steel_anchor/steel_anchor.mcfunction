effect give @s[tag=!noanchorProtect,tag=!anchor_skill2,tag=!anchor_skill3] regeneration 114514 2 true
effect give @s[tag=!noanchorProtect,tag=!anchor_skill2,tag=!anchor_skill3] resistance 114514 1 true
tag @s[tag=!noanchorProtect] add noanchorProtect

execute as @e[type=!#championsashes:special_entities,predicate=championsashes:hurttime,distance=..7] unless score @s ca.item.id_selecter_mainhand matches 1052 at @s[tag=!skill3_anchor_hit] positioned ~ ~1.5 ~ facing ^-55 ^-55 ^55 run function championsashes:items/steel_anchor/anchor_hit
execute as @e[type=!#championsashes:special_entities,predicate=championsashes:hurttime,distance=..7] unless score @s ca.item.id_selecter_mainhand matches 1052 at @s[tag=!skill3_anchor_hit] positioned ~ ~1.5 ~ facing ^-25 ^25 ^-25 run function championsashes:items/steel_anchor/anchor_hit

execute if score @s[tag=!anchor_skill2] shift matches 1.. run function championsashes:items/steel_anchor/clicker
execute unless score @s shift matches 1.. run tag @s remove needclicker

execute if entity @s[tag=anchor_skill3] run function championsashes:items/steel_anchor/skill3_timer

execute if score @s[tag=!anchor_skill1,tag=!anchor_skill2,tag=!anchor_skill3] shift matches 1.. if score @s ca.item.id_selecter_offhand matches 1052 unless entity @e[tag=aj.water_vfx.root] at @s facing ~ ~ ~ run function championsashes:items/steel_anchor/anchor_skill2