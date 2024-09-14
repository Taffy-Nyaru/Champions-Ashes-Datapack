scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:carian_grandeur/on_summon/as_rig_entities
execute if entity @s[tag=aj.carian_grandeur.bone] run function #animated_java:carian_grandeur/zzzzzzzz/on_summon/as_bones
execute if entity @s[tag=aj.carian_grandeur.locator_origin] run function animated_java:carian_grandeur/zzzzzzzz/summon/as_locator_origins
