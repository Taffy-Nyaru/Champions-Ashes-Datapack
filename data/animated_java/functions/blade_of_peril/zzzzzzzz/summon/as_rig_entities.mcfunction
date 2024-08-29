scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:blade_of_peril/on_summon/as_rig_entities
execute if entity @s[tag=aj.blade_of_peril.bone] run function #animated_java:blade_of_peril/zzzzzzzz/on_summon/as_bones
execute if entity @s[tag=aj.blade_of_peril.locator_origin] run function animated_java:blade_of_peril/zzzzzzzz/summon/as_locator_origins
