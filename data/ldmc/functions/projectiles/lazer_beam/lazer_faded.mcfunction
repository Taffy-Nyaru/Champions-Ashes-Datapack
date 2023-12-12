scoreboard players remove @s lazer_fading 1
execute store result storage generic:main lazer_beam_length[0] float 0.025 run scoreboard players get @s lazer_fading
execute store result storage generic:main lazer_beam_length[2] float 0.025 run scoreboard players get @s lazer_fading

execute as @e[tag=lazer_target] at @s run particle soul_fire_flame ~ ~1 ~ 0.1 0.1 0.1 0.2 25
execute as @e[tag=lazer_target] run damage @s 2 ldmc:gtx690 by @a[tag=lazer_owner,limit=1,sort=nearest]
execute as @e[tag=start_entity,tag=!lazer_owner] run damage @s 2 ldmc:gtx690 by @a[tag=lazer_owner,limit=1,sort=nearest]

data modify entity @s transformation.scale set from storage generic:main lazer_beam_length
execute at @s if score @s lazer_fading matches ..0 run function ldmc:projectiles/lazer_beam/lazer_resummon