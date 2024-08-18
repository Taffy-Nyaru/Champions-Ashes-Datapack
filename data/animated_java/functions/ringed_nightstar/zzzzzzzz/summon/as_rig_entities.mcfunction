scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:ringed_nightstar/on_summon/as_rig_entities
execute if entity @s[tag=aj.ringed_nightstar.bone] run function #animated_java:ringed_nightstar/zzzzzzzz/on_summon/as_bones
execute if entity @s[tag=aj.ringed_nightstar.locator_origin] run function animated_java:ringed_nightstar/zzzzzzzz/summon/as_locator_origins
