#Locating nearest player and nearest unfriendly entity
execute facing entity @a[tag=shot,limit=1,sort=nearest] feet positioned as @s run tp @s ^ ^-0.03 ^-1 ~ ~
execute if entity @e[type=!area_effect_cloud,type=!item_display,team=!friendly,tag=!shot,type=!lightning_bolt,type=!interaction,type=!armor_stand,distance=..10] facing entity @a[tag=shot,limit=1,sort=nearest] eyes positioned ^-1 ^ ^ rotated as @s positioned ^ ^ ^ facing entity @e[type=!area_effect_cloud,type=!item_display,team=!friendly,tag=!shot,type=!lightning_bolt,type=!interaction,type=!armor_stand,limit=1,sort=nearest] eyes positioned as @s run tp @s ^ ^ ^1 ~ ~

#Explosion
execute as @e[tag=!shot,type=!lightning_bolt,type=!interaction,type=!armor_stand,type=!area_effect_cloud,type=!item_display] at @e[tag=head_projectile] if entity @s[distance=..3] run summon creeper ~ ~ ~ {UUID:[I;8,9,6,44],Tags:["bomb"],Fuse:0,powered:1b}

#When enter block explosion
execute unless block ~ ~ ~ #ldmc:transparent_blocks run summon creeper ~ ~ ~ {Tags:["bomb"],Fuse:0,powered:1b}
execute at @e[tag=bomb] run summon lightning_bolt ~ ~ ~ {Tags:["dragon_thunder"]}

execute as @e[tag=head_projectile] at @e[tag=bomb] if entity @e[tag=head_projectile,distance=..2] run kill @s[distance=..2]