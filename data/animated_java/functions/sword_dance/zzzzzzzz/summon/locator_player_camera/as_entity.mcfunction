tp @s ^0 ^0.125 ^0 ~-180 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:sword_dance/on_summon/as_locator_entities