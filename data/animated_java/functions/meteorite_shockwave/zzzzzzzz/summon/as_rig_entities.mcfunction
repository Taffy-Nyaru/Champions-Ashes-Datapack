scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:meteorite_shockwave/on_summon/as_rig_entities
execute if entity @s[tag=aj.meteorite_shockwave.bone] run function #animated_java:meteorite_shockwave/zzzzzzzz/on_summon/as_bones

