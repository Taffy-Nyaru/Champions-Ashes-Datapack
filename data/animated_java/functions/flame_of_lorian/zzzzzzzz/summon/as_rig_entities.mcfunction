scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:flame_of_lorian/on_summon/as_rig_entities
execute if entity @s[tag=aj.flame_of_lorian.bone] run function #animated_java:flame_of_lorian/zzzzzzzz/on_summon/as_bones
execute if entity @s[tag=aj.flame_of_lorian.locator_origin] run function animated_java:flame_of_lorian/zzzzzzzz/summon/as_locator_origins
