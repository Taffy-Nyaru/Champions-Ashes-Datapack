function ldmc:projectiles/dragon_bomb/bomb_rotate
execute unless entity @e[tag=foe,distance=..10] run tp @s ~ ~4 ~

#execute facing entity @e[tag=nep_projectile,tag=phase2,limit=1,sort=nearest] feet positioned as @s run tp @s ^ ^-1 ^-1 ~ ~
execute if entity @e[tag=foe,distance=..10] facing entity @e[tag=phase2,limit=1,sort=nearest] eyes positioned ^-1 ^ ^ rotated as @s positioned ^ ^ ^ facing entity @e[tag=foe,limit=1,sort=nearest] eyes positioned as @s run tp @s ^ ^-0.25 ^0.5 ~ ~

execute as @e[tag=foe] at @e[tag=nep_projectile] if entity @s[distance=..2] run summon creeper ~ ~ ~ {UUID:[I;88,99,66,4],Tags:["dragon_bomb"],Fuse:0,powered:1b}

execute at @e[tag=nep_projectile] unless block ~ ~ ~ air unless block ~ ~ ~ water unless block ~ ~ ~ lava run summon creeper ~ ~ ~ {Tags:["dragon_bomb"],Fuse:0,powered:1b}
execute at @e[type=creeper,tag=dragon_bomb] run summon lightning_bolt ~ ~ ~ {Tags:["Thunder"]}

execute as @e[tag=nep_projectile] at @e[type=creeper,tag=dragon_bomb] if entity @e[tag=nep_projectile,distance=..1] run kill @s[distance=..1]