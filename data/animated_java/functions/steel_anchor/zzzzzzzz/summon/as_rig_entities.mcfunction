scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:steel_anchor/on_summon/as_rig_entities
execute if entity @s[tag=aj.steel_anchor.bone] run function #animated_java:steel_anchor/zzzzzzzz/on_summon/as_bones
execute if entity @s[tag=aj.steel_anchor.locator_origin] run function animated_java:steel_anchor/zzzzzzzz/summon/as_locator_origins
