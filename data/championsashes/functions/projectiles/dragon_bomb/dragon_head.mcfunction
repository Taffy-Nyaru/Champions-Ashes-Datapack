execute as @e[tag=head_projectile] at @s run function championsashes:projectiles/dragon_bomb/explosion
execute at @s if entity @e[tag=head_projectile,distance=128..] run kill @e[tag=head_projectile,distance=127..]
execute unless entity @e[tag=head_projectile] run tag @s remove shot