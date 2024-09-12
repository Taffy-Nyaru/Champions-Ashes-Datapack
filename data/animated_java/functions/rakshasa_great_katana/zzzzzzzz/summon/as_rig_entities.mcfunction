scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:rakshasa_great_katana/on_summon/as_rig_entities
execute if entity @s[tag=aj.rakshasa_great_katana.bone] run function #animated_java:rakshasa_great_katana/zzzzzzzz/on_summon/as_bones
execute if entity @s[tag=aj.rakshasa_great_katana.locator_origin] run function animated_java:rakshasa_great_katana/zzzzzzzz/summon/as_locator_origins
