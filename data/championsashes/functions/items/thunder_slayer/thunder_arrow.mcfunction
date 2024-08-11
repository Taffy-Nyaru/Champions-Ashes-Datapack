#Base damage is power enchantment lvl+2
execute store result score @s power_level run data get entity @s SelectedItem.tag.Enchantments[{id:"minecraft:power"}].lvl
execute store result score @s thunderarrow_damage run scoreboard players operation @s power_level += #2 championsashesValue

execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:thunder_slayer"}}} if score @s usedBow matches 1.. run function championsashes:items/thunder_slayer/used_bow

execute store result storage math:io thunderslayer_arrow_owner[0] int 1 run scoreboard players get @s thunderslayer_arrow_owner_uuid0
execute store result storage math:io thunderslayer_arrow_owner[1] int 1 run scoreboard players get @s thunderslayer_arrow_owner_uuid1
execute store result storage math:io thunderslayer_arrow_owner[2] int 1 run scoreboard players get @s thunderslayer_arrow_owner_uuid2
execute store result storage math:io thunderslayer_arrow_owner[3] int 1 run scoreboard players get @s thunderslayer_arrow_owner_uuid3
data modify entity 942429eb-9233-4105-a36e-8fec8f4ce862 Thrower set from storage math:io thunderslayer_arrow_owner

execute as 942429eb-9233-4105-a36e-8fec8f4ce862 on origin at @s run ride @e[tag=aj.thunder_bullet.root,limit=1,distance=..3] mount @s
execute as 942429eb-9233-4105-a36e-8fec8f4ce862 on origin run data modify entity @s damage set from storage math:io thunderarrow_damage
execute as 942429eb-9233-4105-a36e-8fec8f4ce862 on origin at @s if entity @e[type=lightning_bolt,tag=Thunder,distance=..1] run kill @s

execute if entity @e[tag=aj.thunder_bullet.root] run scoreboard players add #thunder_timer championsashes_Timer 1
execute if score #thunder_timer championsashes_Timer matches 60.. as @e[tag=aj.thunder_bullet.root] at @s at @e[type=!#championsashes:special_entities,type=!villager,type=!player,type=!iron_golem,distance=..12] run summon lightning_bolt ~ ~ ~ {Tags:["Thunder"]}
execute if score #thunder_timer championsashes_Timer matches 60.. run scoreboard players set #thunder_timer championsashes_Timer 0
#execute if score @s recursive_arrow matches 1 run data modify storage math:io thunderarrow_damage set value 2

execute if score @s thunderarrow_damage matches 2147483647.. run scoreboard players set @s thunderarrow_damage 2147483647
execute as @e[tag=aj.thunder_bullet.root] at @s if entity @e[distance=..5,type=!#championsashes:special_entities,predicate=championsashes:hurttime,predicate=!championsashes:using_item/thunder_slayer] run function championsashes:items/thunder_slayer/effect