scoreboard players add @s vortex_scale 1
data modify storage generic:main vortex_scale set value [0.01f,0.01f,0.01f]
execute store result storage generic:main vortex_scale[0] float 0.005 run scoreboard players get @s vortex_scale
execute store result storage generic:main vortex_scale[1] float 0.005 run scoreboard players get @s vortex_scale
execute store result storage generic:main vortex_scale[2] float 0.001 run scoreboard players get @s vortex_scale
data modify entity @s transformation.scale set from storage generic:main vortex_scale
execute if score @s vortex_scale matches 1000.. run tag @s remove scaling