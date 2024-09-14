scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:bullet_generator/on_summon/as_rig_entities
execute if entity @s[tag=aj.bullet_generator.bone] run function #animated_java:bullet_generator/zzzzzzzz/on_summon/as_bones
execute if entity @s[tag=aj.bullet_generator.locator_origin] run function animated_java:bullet_generator/zzzzzzzz/summon/as_locator_origins
