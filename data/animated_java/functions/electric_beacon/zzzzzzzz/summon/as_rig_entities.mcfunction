scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:electric_beacon/on_summon/as_rig_entities
execute if entity @s[tag=aj.electric_beacon.bone] run function #animated_java:electric_beacon/zzzzzzzz/on_summon/as_bones
execute if entity @s[tag=aj.electric_beacon.locator_origin] run function animated_java:electric_beacon/zzzzzzzz/summon/as_locator_origins
