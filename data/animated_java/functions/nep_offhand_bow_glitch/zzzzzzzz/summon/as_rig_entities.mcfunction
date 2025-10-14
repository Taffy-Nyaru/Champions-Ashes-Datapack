scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:nep_offhand_bow_glitch/on_summon/as_rig_entities
execute if entity @s[tag=aj.nep_offhand_bow_glitch.bone] run function #animated_java:nep_offhand_bow_glitch/zzzzzzzz/on_summon/as_bones
execute if entity @s[tag=aj.nep_offhand_bow_glitch.locator_origin] run function animated_java:nep_offhand_bow_glitch/zzzzzzzz/summon/as_locator_origins
