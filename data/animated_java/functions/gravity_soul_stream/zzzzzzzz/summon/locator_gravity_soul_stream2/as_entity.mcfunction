tp @s ^0.375 ^0.83098 ^-1.0412 ~0 ~-90
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:gravity_soul_stream/on_summon/as_locator_entities