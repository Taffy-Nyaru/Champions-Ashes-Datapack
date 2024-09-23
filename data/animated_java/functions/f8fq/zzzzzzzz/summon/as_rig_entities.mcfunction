scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:f8fq/on_summon/as_rig_entities
execute if entity @s[tag=aj.f8fq.bone] run function #animated_java:f8fq/zzzzzzzz/on_summon/as_bones
execute if entity @s[tag=aj.f8fq.locator_origin] run function animated_java:f8fq/zzzzzzzz/summon/as_locator_origins
