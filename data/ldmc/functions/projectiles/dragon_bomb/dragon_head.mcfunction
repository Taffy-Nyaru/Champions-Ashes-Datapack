execute as @e[tag=head_projectile] at @s facing entity @a[tag=shot,limit=1,sort=nearest] feet positioned as @s run tp @s ^ ^-0.03 ^-1 ~ ~
execute as @e[tag=head_projectile] at @s if entity @e[type=!area_effect_cloud,type=!item_display,team=!friendly,type=!armor_stand,distance=..10] facing entity @a[tag=shot,limit=1,sort=nearest] eyes positioned ^-1 ^ ^ rotated as @s positioned ^ ^ ^ facing entity @e[type=!area_effect_cloud,type=!item_display,team=!friendly,type=!armor_stand,limit=1,sort=nearest] eyes positioned as @s run tp @s ^ ^ ^1 ~ ~

execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!item_display,type=!player] at @e[tag=head_projectile] if entity @e[type=!armor_stand,type=!area_effect_cloud,type=!item_display,type=!player,distance=..3] run summon creeper ~ ~ ~ {UUID:[I;9,6,4,8],Tags:["dragon_bomb"],Fuse:0,powered:1b}

execute as @e[tag=head_projectile] at @s unless block ~ ~ ~ air unless block ~ ~ ~ water unless block ~ ~ ~ lava run summon creeper ~ ~ ~ {Tags:["dragon_bomb"],Fuse:0,powered:1b}
execute at @e[type=creeper,tag=dragon_bomb] run summon lightning_bolt ~ ~ ~ {Tags:["dragon_thunder"]}

execute as @e[tag=head_projectile] at @e[type=creeper,tag=dragon_bomb] if entity @e[tag=head_projectile,distance=..1] run kill @s[distance=..1]
execute as @e[tag=head_projectile] at @a[tag=shot,limit=1,sort=nearest] if entity @e[tag=head_projectile,distance=128..] run kill @e[tag=head_projectile,distance=127..]

execute unless entity @e[tag=head_projectile] run tag @s remove shot