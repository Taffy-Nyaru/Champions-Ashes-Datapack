scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:gravity_impaler/on_summon/as_rig_entities
execute if entity @s[tag=aj.gravity_impaler.bone] run function #animated_java:gravity_impaler/zzzzzzzz/on_summon/as_bones
execute if entity @s[tag=aj.gravity_impaler.locator_origin] run function animated_java:gravity_impaler/zzzzzzzz/summon/as_locator_origins
