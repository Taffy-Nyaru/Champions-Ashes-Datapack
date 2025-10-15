scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:nep_gravity_lightning_bolt/on_summon/as_rig_entities
execute if entity @s[tag=aj.nep_gravity_lightning_bolt.bone] run function #animated_java:nep_gravity_lightning_bolt/zzzzzzzz/on_summon/as_bones
execute if entity @s[tag=aj.nep_gravity_lightning_bolt.locator_origin] run function animated_java:nep_gravity_lightning_bolt/zzzzzzzz/summon/as_locator_origins
