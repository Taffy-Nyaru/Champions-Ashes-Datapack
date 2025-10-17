scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:nep_phase3_transition/on_summon/as_rig_entities
execute if entity @s[tag=aj.nep_phase3_transition.bone] run function #animated_java:nep_phase3_transition/zzzzzzzz/on_summon/as_bones
execute if entity @s[tag=aj.nep_phase3_transition.locator_origin] run function animated_java:nep_phase3_transition/zzzzzzzz/summon/as_locator_origins
