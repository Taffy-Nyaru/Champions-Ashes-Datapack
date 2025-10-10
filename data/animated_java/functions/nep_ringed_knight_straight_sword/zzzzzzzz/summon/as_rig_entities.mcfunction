scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:nep_ringed_knight_straight_sword/on_summon/as_rig_entities
execute if entity @s[tag=aj.nep_ringed_knight_straight_sword.bone] run function #animated_java:nep_ringed_knight_straight_sword/zzzzzzzz/on_summon/as_bones
execute if entity @s[tag=aj.nep_ringed_knight_straight_sword.locator_origin] run function animated_java:nep_ringed_knight_straight_sword/zzzzzzzz/summon/as_locator_origins
