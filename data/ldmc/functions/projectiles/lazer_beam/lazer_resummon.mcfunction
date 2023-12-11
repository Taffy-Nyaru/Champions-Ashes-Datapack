
#Mark the next node mob the laser need to search for
#tag @e[limit=1,sort=nearest,type=!#ldmc:special_entities,type=!player,tag=!got_hit_lazer,distance=..20] add lazer_node
#execute as @e[tag=lazer_node,tag=!got_hit_lazer] at @s run function ldmc:projectiles/lazer_beam/initialize

#Mark the mob got hit by lazer, then this mob wouldn't be the target for the lazer to search for
#tag @e[tag=start_entity,tag=!lazer_node] add got_hit_lazer

scoreboard players reset @e[distance=..120,scores={Y_value=1..}] Y_value
data modify storage generic:main lazer_beam_length set value [0.5f, 1f, 0.5f]
kill @s