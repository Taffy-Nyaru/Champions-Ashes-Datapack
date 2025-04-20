scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:eletric_shield/on_summon/as_rig_entities
execute if entity @s[tag=aj.eletric_shield.bone] run function #animated_java:eletric_shield/zzzzzzzz/on_summon/as_bones

