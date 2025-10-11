scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:nep_phase2_murky/on_summon/as_rig_entities
execute if entity @s[tag=aj.nep_phase2_murky.bone] run function #animated_java:nep_phase2_murky/zzzzzzzz/on_summon/as_bones
execute if entity @s[tag=aj.nep_phase2_murky.locator_origin] run function animated_java:nep_phase2_murky/zzzzzzzz/summon/as_locator_origins
