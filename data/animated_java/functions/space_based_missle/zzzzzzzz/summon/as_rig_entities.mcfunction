scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:space_based_missle/on_summon/as_rig_entities
execute if entity @s[tag=aj.space_based_missle.bone] run function #animated_java:space_based_missle/zzzzzzzz/on_summon/as_bones
execute if entity @s[tag=aj.space_based_missle.locator_origin] run function animated_java:space_based_missle/zzzzzzzz/summon/as_locator_origins
