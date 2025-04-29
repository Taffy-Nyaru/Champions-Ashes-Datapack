scoreboard players add @s skill_time 1
execute store result score @s pkcs_damage run data get entity @s SelectedItem.tag.Damage
execute if score @s skill_time matches 1 run scoreboard players add @s pkcs_damage 100
execute store result storage generic:main pkcs_damage int 1 run scoreboard players get @s pkcs_damage
execute if score @s skill_time matches 1 run item modify entity @s[gamemode=survival] weapon.mainhand championsashes:pkcs_damage
execute if score @s pkcs_damage matches 466.. run scoreboard players set @s pkcs_damage -1

execute if score @s skill_time matches 1..24 run tp @e[tag=pkcs_skill,distance=..3] ~ ~2 ~
execute if score @s skill_time matches 1..24 run scoreboard players add @e[type=!#championsashes:special_entities,distance=..5,tag=!using_skill] frostbite_Timer 120
execute if score @s skill_time matches 1..24 as @e[type=!#championsashes:special_entities,distance=..5,team=!friendly,tag=!using_skill] run damage @s 1 championsashes:frostbite by @a[limit=1,sort=nearest,tag=using_skill]
execute if score @s skill_time matches 25.. run kill @e[tag=pkcs_skill,distance=..3]
execute if score @s skill_time matches 25.. run tag @s remove using_skill
execute if score @s skill_time matches 25.. run scoreboard players set @s skill_time 0