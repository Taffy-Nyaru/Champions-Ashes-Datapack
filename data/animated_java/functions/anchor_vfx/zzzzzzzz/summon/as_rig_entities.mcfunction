scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:anchor_vfx/on_summon/as_rig_entities
execute if entity @s[tag=aj.anchor_vfx.bone] run function #animated_java:anchor_vfx/zzzzzzzz/on_summon/as_bones

