damage @s 1 ldmc:gtx690 by @a[tag=lazer_owner,limit=1,sort=nearest]
#execute store result score #damage_length ldmcValue
execute positioned ^ ^ ^0.1 run function ldmc:projectiles/lazer_beam/damage/0