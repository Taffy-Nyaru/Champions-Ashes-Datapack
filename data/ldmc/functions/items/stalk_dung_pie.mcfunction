#Get owner
function ldmc:projectiles/snowball_detect/snowball_thrower
execute as 942429eb-9233-4105-a36e-8fec8f4ce862 on origin unless entity @s[tag=csg] run tag @s add csg

execute if entity @e[type=!snowball,type=!#ldmc:special_entities,tag=!csg,distance=..3] run function ldmc:items/dung_particle
execute as @e[type=!snowball,type=!#ldmc:special_entities,tag=!csg,distance=..3] run effect give @s poison 60 0 true
execute unless block ~0.5 ~ ~ #ldmc:transparent_blocks run function ldmc:items/dung_particle
execute unless block ~ ~0.5 ~ #ldmc:transparent_blocks run function ldmc:items/dung_particle
execute unless block ~ ~ ~0.5 #ldmc:transparent_blocks run function ldmc:items/dung_particle
execute unless block ~-0.5 ~ ~ #ldmc:transparent_blocks run function ldmc:items/dung_particle
execute unless block ~ ~-0.5 ~ #ldmc:transparent_blocks run function ldmc:items/dung_particle
execute unless block ~ ~ ~-0.5 #ldmc:transparent_blocks run function ldmc:items/dung_particle
execute unless block ~0.5 ~0.5 ~ #ldmc:transparent_blocks run function ldmc:items/dung_particle
execute unless block ~0.5 ~0.5 ~0.5 #ldmc:transparent_blocks run function ldmc:items/dung_particle
execute unless block ~-0.5 ~-0.5 ~-0.5 #ldmc:transparent_blocks run function ldmc:items/dung_particle
execute unless block ~-0.5 ~-0.5 ~ #ldmc:transparent_blocks run function ldmc:items/dung_particle
execute unless block ~-0.5 ~ ~-0.5 #ldmc:transparent_blocks run function ldmc:items/dung_particle
execute unless block ~ ~-0.5 ~-0.5 #ldmc:transparent_blocks run function ldmc:items/dung_particle
execute unless block ~ ~0.5 ~0.5 #ldmc:transparent_blocks run function ldmc:items/dung_particle
execute unless block ~0.5 ~-0.5 ~-0.5 #ldmc:transparent_blocks run function ldmc:items/dung_particle
execute unless block ~-0.5 ~0.5 ~-0.5 #ldmc:transparent_blocks run function ldmc:items/dung_particle
execute unless block ~-0.5 ~-0.5 ~0.5 #ldmc:transparent_blocks run function ldmc:items/dung_particle
execute unless block ~0.5 ~0.5 ~-0.5 #ldmc:transparent_blocks run function ldmc:items/dung_particle
execute unless block ~-0.5 ~0.5 ~0.5 #ldmc:transparent_blocks run function ldmc:items/dung_particle
execute unless block ~-0.5 ~ ~0.5 #ldmc:transparent_blocks run function ldmc:items/dung_particle
execute unless block ~ ~0.5 ~-0.5 #ldmc:transparent_blocks run function ldmc:items/dung_particle
execute unless block ~ ~-0.5 ~0.5 #ldmc:transparent_blocks run function ldmc:items/dung_particle
execute unless block ~-0.5 ~0.5 ~ #ldmc:transparent_blocks run function ldmc:items/dung_particle
execute unless block ~0.5 ~ ~-0.5 #ldmc:transparent_blocks run function ldmc:items/dung_particle
execute unless block ~0.5 ~-0.5 ~ #ldmc:transparent_blocks run function ldmc:items/dung_particle
execute unless block ~0.5 ~-0.5 ~0.5 #ldmc:transparent_blocks run function ldmc:items/dung_particle
execute unless block ~0.5 ~ ~0.5 #ldmc:transparent_blocks run function ldmc:items/dung_particle