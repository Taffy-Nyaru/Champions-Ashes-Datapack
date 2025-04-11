scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:water_vfx/on_summon/as_rig_entities
execute if entity @s[tag=aj.water_vfx.bone] run function #animated_java:water_vfx/zzzzzzzz/on_summon/as_bones
execute if entity @s[tag=aj.water_vfx.locator_origin] run function animated_java:water_vfx/zzzzzzzz/summon/as_locator_origins
