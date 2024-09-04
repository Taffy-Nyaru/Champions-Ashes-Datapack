scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:sword_dance/on_summon/as_rig_entities
execute if entity @s[tag=aj.sword_dance.bone] run function #animated_java:sword_dance/zzzzzzzz/on_summon/as_bones
execute if entity @s[tag=aj.sword_dance.locator_origin] run function animated_java:sword_dance/zzzzzzzz/summon/as_locator_origins
