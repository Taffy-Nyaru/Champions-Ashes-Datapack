scoreboard players add @s lazer_beam_length 1

#For some unknown reason, the Y value is forced to be seperated to two parts
execute if score @a[limit=1,sort=nearest,tag=lazer_owner] Y_value <= @e[tag=lazer_target,limit=1,sort=nearest] Y_value facing entity @e[tag=lazer_target,limit=1,sort=nearest] eyes positioned ^ ^-1 ^ rotated as @s positioned ^ ^ ^ facing entity @e[tag=lazer_target,limit=1,sort=nearest] feet positioned as @s run tp @s ^ ^ ^ ~ ~90
execute if score @a[limit=1,sort=nearest,tag=lazer_owner] Y_value > @e[tag=lazer_target,limit=1,sort=nearest] Y_value facing entity @e[tag=lazer_target,limit=1,sort=nearest] eyes positioned ^ ^-1 ^ rotated as @s positioned ^ ^ ^ facing entity @e[tag=lazer_target,limit=1,sort=nearest] feet positioned as @s run tp @s ^ ^ ^ ~ ~-90

#Speed of the lazer
execute if score @a[limit=1,sort=nearest,tag=lazer_owner] Y_value <= @e[tag=lazer_target,limit=1,sort=nearest] Y_value store result storage generic:main lazer_beam_length[1] float 2 run scoreboard players get @s lazer_beam_length
execute if score @a[limit=1,sort=nearest,tag=lazer_owner] Y_value > @e[tag=lazer_target,limit=1,sort=nearest] Y_value store result storage generic:main lazer_beam_length[1] float -2 run scoreboard players get @s lazer_beam_length
execute if score @a[limit=1,sort=nearest,tag=lazer_owner] Y_value <= @e[tag=lazer_target,limit=1,sort=nearest] Y_value store result storage generic:main lazer_beam_translation[1] float 1 run scoreboard players get @s lazer_beam_length
execute if score @a[limit=1,sort=nearest,tag=lazer_owner] Y_value > @e[tag=lazer_target,limit=1,sort=nearest] Y_value store result storage generic:main lazer_beam_translation[1] float -1 run scoreboard players get @s lazer_beam_length

data modify entity @s transformation.translation set from storage generic:main lazer_beam_translation
data modify entity @s transformation.scale set from storage generic:main lazer_beam_length

execute if score @s lazer_beam_length >= @s lazer_euclidean_distance run function ldmc:projectiles/lazer_beam/lazer_end

#Damage
function ldmc:projectiles/lazer_beam/damage/lazer_damage