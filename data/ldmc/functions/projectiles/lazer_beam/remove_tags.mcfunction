tag @a[tag=lazer_owner] remove lazer_owner

#Reset the next node the laser need to get to
tag @e[tag=lazer_node] remove lazer_node

#Reset the start entity to recalculate the distance
tag @e[tag=got_hit_lazer] remove got_hit_lazer

tag @e[tag=lazer_target] remove lazer_target
tag @e[tag=start_entity] remove start_entity
tag @e[tag=end_entity] remove end_entity