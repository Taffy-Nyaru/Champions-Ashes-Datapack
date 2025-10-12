scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:nep_phase3_teleport/on_summon/as_rig_entities
execute if entity @s[tag=aj.nep_phase3_teleport.bone] run function #animated_java:nep_phase3_teleport/zzzzzzzz/on_summon/as_bones

