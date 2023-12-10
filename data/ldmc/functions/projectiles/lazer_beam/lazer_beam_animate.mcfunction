scoreboard players add @s lazer_beam_length 1
data modify entity @s Rotation set from entity @e[limit=1,sort=nearest,distance=..10] Rotation
execute store result entity @s transformation.scale[2] int 1 run scoreboard players get @s lazer_beam_length
function ldmc:projectiles/lazer_beam/euclidean_distance
execute if score @s lazer_beam_length >= @s euclidean_distance run tag @s remove lazer_animate
execute if score @s lazer_beam_length >= @s euclidean_distance run scoreboard players set @s lazer_beam_length 0