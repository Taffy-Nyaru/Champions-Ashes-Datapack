scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:dynastic_sickleplay/on_summon/as_rig_entities
execute if entity @s[tag=aj.dynastic_sickleplay.bone] run function #animated_java:dynastic_sickleplay/zzzzzzzz/on_summon/as_bones
execute if entity @s[tag=aj.dynastic_sickleplay.locator_origin] run function animated_java:dynastic_sickleplay/zzzzzzzz/summon/as_locator_origins
