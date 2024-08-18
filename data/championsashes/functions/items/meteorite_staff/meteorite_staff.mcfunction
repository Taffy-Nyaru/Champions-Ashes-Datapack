tag @s add meteorite_staff_ignite
execute unless score @s shift matches 1.. unless score @s space matches 1.. run function championsashes:items/meteorite_staff/gravity_soul_stream
execute unless entity @e[tag=aj.gravity_orb_projectile.root,distance=..50] unless entity @e[tag=aj.gravity_orb.root,distance=..50] if score @s shift matches 1.. unless score @s space matches 1.. positioned ^ ^1 ^3 run function championsashes:items/meteorite_staff/shot_gravity_orb
execute if score @s shift matches 1.. if score @s space matches 1.. run function championsashes:items/meteorite_staff/starscaller