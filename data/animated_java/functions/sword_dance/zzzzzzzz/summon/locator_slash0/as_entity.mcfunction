tp @s ^-0.5 ^0.75 ^1.03125 ~-180 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:sword_dance/on_summon/as_locator_entities