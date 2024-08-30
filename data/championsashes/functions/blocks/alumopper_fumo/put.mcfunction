setblock ~ ~ ~ end_rod
execute positioned ~ ~-0.5 ~ facing ~ ~ ~-1 run function animated_java:alumopper/summon
summon interaction ~ ~-0.5 ~ {Tags:["fumo_clicker"],response:1b}
item replace entity @s weapon.mainhand with air

execute store result score @s rotation run data get entity @s Rotation[0]
execute if score @s rotation matches 45..135 run data modify entity @e[tag=aj.alumopper.root,limit=1,sort=nearest] Rotation[0] set value -90.0f
execute if score @s rotation matches 135..180 run data modify entity @e[tag=aj.alumopper.root,limit=1,sort=nearest] Rotation[0] set value 0.0f
execute if score @s rotation matches -180..-135 run data modify entity @e[tag=aj.alumopper.root,limit=1,sort=nearest] Rotation[0] set value 0.0f
execute if score @s rotation matches -135..-45 run data modify entity @e[tag=aj.alumopper.root,limit=1,sort=nearest] Rotation[0] set value 90.0f