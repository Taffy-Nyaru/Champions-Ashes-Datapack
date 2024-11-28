scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:purple_fire/on_summon/as_rig_entities
execute if entity @s[tag=aj.purple_fire.bone] run function #animated_java:purple_fire/zzzzzzzz/on_summon/as_bones

