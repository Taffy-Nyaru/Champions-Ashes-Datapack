scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:field_extension/on_summon/as_rig_entities
execute if entity @s[tag=aj.field_extension.bone] run function #animated_java:field_extension/zzzzzzzz/on_summon/as_bones
execute if entity @s[tag=aj.field_extension.locator_origin] run function animated_java:field_extension/zzzzzzzz/summon/as_locator_origins
