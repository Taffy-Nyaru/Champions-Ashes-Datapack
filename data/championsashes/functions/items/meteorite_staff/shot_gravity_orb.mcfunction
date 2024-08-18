tag @s add shot_gravity_orb
function animated_java:gravity_orb_projectile/summon
execute as @e[tag=aj.gravity_orb_projectile.root] run function animated_java:gravity_orb_projectile/animations/rotation/play
execute as @s[gamemode=survival] run function championsashes:items/item_durability