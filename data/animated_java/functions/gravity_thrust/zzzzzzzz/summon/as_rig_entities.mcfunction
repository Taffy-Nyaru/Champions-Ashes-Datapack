scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:gravity_thrust/on_summon/as_rig_entities
execute if entity @s[tag=aj.gravity_thrust.bone] run function #animated_java:gravity_thrust/zzzzzzzz/on_summon/as_bones
execute if entity @s[tag=aj.gravity_thrust.locator_origin] run function animated_java:gravity_thrust/zzzzzzzz/summon/as_locator_origins
