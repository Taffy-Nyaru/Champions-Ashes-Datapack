scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:nep_void_missle/on_summon/as_rig_entities
execute if entity @s[tag=aj.nep_void_missle.bone] run function #animated_java:nep_void_missle/zzzzzzzz/on_summon/as_bones
execute if entity @s[tag=aj.nep_void_missle.locator_origin] run function animated_java:nep_void_missle/zzzzzzzz/summon/as_locator_origins
