scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:gravity_soul_stream/on_summon/as_rig_entities
execute if entity @s[tag=aj.gravity_soul_stream.bone] run function #animated_java:gravity_soul_stream/zzzzzzzz/on_summon/as_bones
execute if entity @s[tag=aj.gravity_soul_stream.locator_origin] run function animated_java:gravity_soul_stream/zzzzzzzz/summon/as_locator_origins