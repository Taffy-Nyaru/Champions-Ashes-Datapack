tag @e[tag=end_entity] remove end_entity
tag @e[tag=start_entity] remove start_entity
tag @e[tag=lazer_target] remove lazer_target

#Mark the next node mob the laser need to search for
execute as @e[limit=1,sort=nearest,type=!#ldmc:special_entities,tag=!lazer_node,distance=..20] at @s run function ldmc:projectiles/lazer_beam/initialize


scoreboard players reset @e[distance=..120,scores={Y_value=1..}] Y_value
data modify storage generic:main lazer_beam_length set value [0.25f, 1f, 0.25f]
kill @s