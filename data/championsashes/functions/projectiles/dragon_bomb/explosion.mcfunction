#Locating nearest player and nearest unfriendly entity
execute facing entity @a[tag=shot,limit=1,sort=nearest] feet positioned as @s run tp @s ^ ^-0.03 ^-1 ~ ~
execute if entity @e[type=!#championsashes:special_entities,type=!lightning_bolt,team=!friendly,tag=!shot,distance=..10] facing entity @a[tag=shot,limit=1,sort=nearest] eyes positioned ^-1 ^ ^ rotated as @s positioned ^ ^ ^ facing entity @e[type=!#championsashes:special_entities,type=!lightning_bolt,team=!friendly,tag=!shot,limit=1,sort=nearest] eyes positioned as @s run tp @s ^ ^ ^0.5 ~ ~

#Explosion
execute as @e[type=!#championsashes:special_entities,type=!lightning_bolt,tag=!shot,distance=..3.5] at @e[tag=head_projectile] run summon creeper ~ ~ ~ {Invulnerable:1b,Tags:["bomb"],Fuse:0,powered:1b}

#When enter block explosion
execute unless block ~ ~ ~ #championsashes:transparent_blocks run summon creeper ~ ~ ~ {Invulnerable:1b,Tags:["bomb"],Fuse:0,powered:1b}
execute at @e[type=creeper,distance=..10,tag=bomb] run summon lightning_bolt ~ ~ ~ {Tags:["dragon_thunder"]}

function championsashes:projectiles/dragon_bomb/bomb_rotate
execute at @e[type=creeper,distance=..10,tag=bomb] if entity @e[tag=head_projectile,distance=..2] run kill @s[distance=..2]