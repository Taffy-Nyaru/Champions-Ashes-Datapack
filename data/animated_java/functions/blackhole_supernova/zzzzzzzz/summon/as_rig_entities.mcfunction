scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:blackhole_supernova/on_summon/as_rig_entities
execute if entity @s[tag=aj.blackhole_supernova.bone] run function #animated_java:blackhole_supernova/zzzzzzzz/on_summon/as_bones
execute if entity @s[tag=aj.blackhole_supernova.locator_origin] run function animated_java:blackhole_supernova/zzzzzzzz/summon/as_locator_origins
