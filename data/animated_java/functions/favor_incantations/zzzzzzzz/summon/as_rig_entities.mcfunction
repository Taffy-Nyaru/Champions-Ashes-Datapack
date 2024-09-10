scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:favor_incantations/on_summon/as_rig_entities
execute if entity @s[tag=aj.favor_incantations.bone] run function #animated_java:favor_incantations/zzzzzzzz/on_summon/as_bones
execute if entity @s[tag=aj.favor_incantations.locator_origin] run function animated_java:favor_incantations/zzzzzzzz/summon/as_locator_origins
