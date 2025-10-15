scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:nep_fume_ugs_skills/on_summon/as_rig_entities
execute if entity @s[tag=aj.nep_fume_ugs_skills.bone] run function #animated_java:nep_fume_ugs_skills/zzzzzzzz/on_summon/as_bones
execute if entity @s[tag=aj.nep_fume_ugs_skills.locator_origin] run function animated_java:nep_fume_ugs_skills/zzzzzzzz/summon/as_locator_origins
