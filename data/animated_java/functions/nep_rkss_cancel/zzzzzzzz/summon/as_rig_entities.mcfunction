scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:nep_rkss_cancel/on_summon/as_rig_entities
execute if entity @s[tag=aj.nep_rkss_cancel.bone] run function #animated_java:nep_rkss_cancel/zzzzzzzz/on_summon/as_bones
execute if entity @s[tag=aj.nep_rkss_cancel.locator_origin] run function animated_java:nep_rkss_cancel/zzzzzzzz/summon/as_locator_origins
