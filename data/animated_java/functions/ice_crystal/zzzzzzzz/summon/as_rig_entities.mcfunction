scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:ice_crystal/on_summon/as_rig_entities
execute if entity @s[tag=aj.ice_crystal.bone] run function #animated_java:ice_crystal/zzzzzzzz/on_summon/as_bones

