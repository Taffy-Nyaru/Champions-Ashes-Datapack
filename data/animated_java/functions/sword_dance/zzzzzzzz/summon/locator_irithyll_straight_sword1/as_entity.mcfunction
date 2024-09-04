tp @s ^-0.375 ^0.875 ^0.5625 ~-180 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:sword_dance/on_summon/as_locator_entities