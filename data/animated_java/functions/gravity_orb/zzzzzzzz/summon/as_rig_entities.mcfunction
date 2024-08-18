scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:gravity_orb/on_summon/as_rig_entities
execute if entity @s[tag=aj.gravity_orb.bone] run function #animated_java:gravity_orb/zzzzzzzz/on_summon/as_bones
execute if entity @s[tag=aj.gravity_orb.locator_origin] run function animated_java:gravity_orb/zzzzzzzz/summon/as_locator_origins
