scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:starscaller/on_summon/as_rig_entities
execute if entity @s[tag=aj.starscaller.bone] run function #animated_java:starscaller/zzzzzzzz/on_summon/as_bones
execute if entity @s[tag=aj.starscaller.locator_origin] run function animated_java:starscaller/zzzzzzzz/summon/as_locator_origins
