execute as @e[type=item_display,distance=..100,tag=head_projectile] at @s run function championsashes:projectiles/dragon_bomb/explosion
execute at @s run kill @e[type=item_display,tag=head_projectile,distance=100..]
execute unless entity @e[type=item_display,distance=..100,tag=head_projectile] run tag @s remove shot