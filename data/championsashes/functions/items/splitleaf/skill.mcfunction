execute store result score @s splitleaf_damage run data get entity @s SelectedItem.tag.Damage
scoreboard players add @s splitleaf_damage 1
execute store result storage generic:main splitleaf_damage int 1 run scoreboard players get @s splitleaf_damage
item modify entity @s[gamemode=survival] weapon.mainhand championsashes:splitleaf_damage
execute if score @s splitleaf_damage matches 2031.. run scoreboard players set @s splitleaf_damage -1
execute as @e[type=!#championsashes:special_entities,distance=..5,tag=!splitleaf_skill,tag=!helicopter,tag=!ally] run damage @s 12 player_attack by @a[limit=1,sort=nearest,tag=helicopter]

tp @e[tag=splitleaf_skill,distance=..5] ~ ~1.5 ~ ~ ~
effect give @s[tag=!infinite_true_combo] levitation 1 3 true