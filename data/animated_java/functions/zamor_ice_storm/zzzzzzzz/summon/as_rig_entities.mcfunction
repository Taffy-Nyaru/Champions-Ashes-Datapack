scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:zamor_ice_storm/on_summon/as_rig_entities
execute if entity @s[tag=aj.zamor_ice_storm.bone] run function #animated_java:zamor_ice_storm/zzzzzzzz/on_summon/as_bones

