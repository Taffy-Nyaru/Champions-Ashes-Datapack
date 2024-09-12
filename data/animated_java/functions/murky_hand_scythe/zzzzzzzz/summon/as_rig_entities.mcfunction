scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:murky_hand_scythe/on_summon/as_rig_entities
execute if entity @s[tag=aj.murky_hand_scythe.bone] run function #animated_java:murky_hand_scythe/zzzzzzzz/on_summon/as_bones
execute if entity @s[tag=aj.murky_hand_scythe.locator_origin] run function animated_java:murky_hand_scythe/zzzzzzzz/summon/as_locator_origins
