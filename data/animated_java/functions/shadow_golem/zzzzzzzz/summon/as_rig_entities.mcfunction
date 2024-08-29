scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:shadow_golem/on_summon/as_rig_entities
execute if entity @s[tag=aj.shadow_golem.bone] run function #animated_java:shadow_golem/zzzzzzzz/on_summon/as_bones

