scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:crystal_blade/on_summon/as_rig_entities
execute if entity @s[tag=aj.crystal_blade.bone] run function #animated_java:crystal_blade/zzzzzzzz/on_summon/as_bones
execute if entity @s[tag=aj.crystal_blade.locator_origin] run function animated_java:crystal_blade/zzzzzzzz/summon/as_locator_origins
