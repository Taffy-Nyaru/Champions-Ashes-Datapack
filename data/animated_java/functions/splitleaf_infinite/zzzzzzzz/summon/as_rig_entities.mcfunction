scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:splitleaf_infinite/on_summon/as_rig_entities
execute if entity @s[tag=aj.splitleaf_infinite.bone] run function #animated_java:splitleaf_infinite/zzzzzzzz/on_summon/as_bones
execute if entity @s[tag=aj.splitleaf_infinite.locator_origin] run function animated_java:splitleaf_infinite/zzzzzzzz/summon/as_locator_origins
