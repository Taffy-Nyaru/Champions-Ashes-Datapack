scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:chainsaw/on_summon/as_rig_entities
execute if entity @s[tag=aj.chainsaw.bone] run function #animated_java:chainsaw/zzzzzzzz/on_summon/as_bones
execute if entity @s[tag=aj.chainsaw.locator_origin] run function animated_java:chainsaw/zzzzzzzz/summon/as_locator_origins
