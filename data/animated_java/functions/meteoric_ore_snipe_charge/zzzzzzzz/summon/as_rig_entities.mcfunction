scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:meteoric_ore_snipe_charge/on_summon/as_rig_entities
execute if entity @s[tag=aj.meteoric_ore_snipe_charge.bone] run function #animated_java:meteoric_ore_snipe_charge/zzzzzzzz/on_summon/as_bones
execute if entity @s[tag=aj.meteoric_ore_snipe_charge.locator_origin] run function animated_java:meteoric_ore_snipe_charge/zzzzzzzz/summon/as_locator_origins
