scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:gravity_orb_projectile/on_summon/as_rig_entities
execute if entity @s[tag=aj.gravity_orb_projectile.bone] run function #animated_java:gravity_orb_projectile/zzzzzzzz/on_summon/as_bones

