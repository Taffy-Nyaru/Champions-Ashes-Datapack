setblock ^ ^ ^2 end_gateway destroy
execute as @e[type=#minecraft:impact_projectiles,type=!snowball] at @s facing entity @e[tag=void_marker,limit=1,sort=nearest,distance=..10] eyes positioned ^ ^ ^ run tp @s ^-0.1 ^-0.01 ^0.25 ~ ~
execute if score @s void_eye_timer matches 1200.. at @s run setblock ~ ~ ~ air replace
execute if score @s void_eye_timer matches 1200.. run kill @s