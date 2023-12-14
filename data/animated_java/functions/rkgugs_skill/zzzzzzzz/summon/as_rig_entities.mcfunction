scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:rkgugs_skill/on_summon/as_rig_entities
execute if entity @s[tag=aj.rkgugs_skill.bone] run function #animated_java:rkgugs_skill/zzzzzzzz/on_summon/as_bones
execute if entity @s[tag=aj.rkgugs_skill.locator_origin] run function animated_java:rkgugs_skill/zzzzzzzz/summon/as_locator_origins
