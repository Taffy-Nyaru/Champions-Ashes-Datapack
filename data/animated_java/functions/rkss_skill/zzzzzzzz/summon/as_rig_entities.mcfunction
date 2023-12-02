scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:rkss_skill/on_summon/as_rig_entities
execute if entity @s[tag=aj.rkss_skill.bone] run function #animated_java:rkss_skill/zzzzzzzz/on_summon/as_bones

