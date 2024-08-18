scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:dimension_slash/on_summon/as_rig_entities
execute if entity @s[tag=aj.dimension_slash.bone] run function #animated_java:dimension_slash/zzzzzzzz/on_summon/as_bones
execute if entity @s[tag=aj.dimension_slash.locator_origin] run function animated_java:dimension_slash/zzzzzzzz/summon/as_locator_origins
