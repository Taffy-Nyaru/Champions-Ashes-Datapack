#Ray Cast
function championsashes:raycast/ray

#Explosions
execute as @e[distance=..15,type=creeper,tag=bomb,predicate=championsashes:misc/bomb_creeper] run data modify entity @s ignited set value 1b

scoreboard players set #5ticks ca.tick5_schedule 0