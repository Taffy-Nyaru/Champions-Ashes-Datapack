scoreboard players remove @s lazer_fading 1
execute store result storage generic:main lazer_beam_length[0] float 0.05 run scoreboard players get @s lazer_fading
execute store result storage generic:main lazer_beam_length[2] float 0.05 run scoreboard players get @s lazer_fading
data modify entity @s transformation.scale set from storage generic:main lazer_beam_length
execute if score @s lazer_fading matches ..0 run function ldmc:projectiles/lazer_beam/lazer_resummon