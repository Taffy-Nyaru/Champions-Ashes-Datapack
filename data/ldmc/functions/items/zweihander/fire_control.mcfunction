execute as @p at @p if entity @e[type=lightning_bolt,distance=..5] at @s if entity @e[type=item] if entity @e[type=lightning_bolt,distance=..5] as @e[type=item] run data modify entity @s Invulnerable set value 1b
execute as @p at @p if entity @e[type=lightning_bolt,distance=..5] at @s if entity @e[type=experience_orb] if entity @e[type=lightning_bolt,distance=..5] as @e[type=experience_orb] run data modify entity @s Invulnerable set value 1b

execute if entity @e[tag=fire_control] run scoreboard players add firecontrol.time timer 1
execute if score firecontrol.time timer matches ..20 at @e[tag=fire_control] run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 air replace fire
execute if score firecontrol.time timer matches 20.. run tag @e remove fire_control
execute if score firecontrol.time timer matches 20.. run kill @e[type=lightning_bolt,tag=Thunder]
execute if score firecontrol.time timer matches 20.. run scoreboard players set firecontrol.time timer 0