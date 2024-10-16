scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:destined_death/on_summon/as_rig_entities
execute if entity @s[tag=aj.destined_death.bone] run function #animated_java:destined_death/zzzzzzzz/on_summon/as_bones
execute if entity @s[tag=aj.destined_death.locator_origin] run function animated_java:destined_death/zzzzzzzz/summon/as_locator_origins
