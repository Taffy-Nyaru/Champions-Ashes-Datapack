execute store result storage math:io snowball_uuid[0] int 1 run scoreboard players get @s snowball_uuid0
execute store result storage math:io snowball_uuid[1] int 1 run scoreboard players get @s snowball_uuid1
execute store result storage math:io snowball_uuid[2] int 1 run scoreboard players get @s snowball_uuid2
execute store result storage math:io snowball_uuid[3] int 1 run scoreboard players get @s snowball_uuid3
data modify entity 942429eb-9233-4105-a36e-8fec8f4ce862 Thrower set from storage math:io snowball_uuid

execute if entity @e[type=snowball,predicate=championsashes:misc/shadow_vortex] as 942429eb-9233-4105-a36e-8fec8f4ce862 on origin run tag @s[tag=!used_vortex] add used_vortex
execute if entity @e[type=snowball,predicate=championsashes:misc/thunder_knife] as 942429eb-9233-4105-a36e-8fec8f4ce862 on origin run tag @s[tag=!killer] add killer
execute if entity @e[type=snowball,predicate=championsashes:misc/stalk_dung_pie] as 942429eb-9233-4105-a36e-8fec8f4ce862 on origin run tag @s[tag=!csg] add csg