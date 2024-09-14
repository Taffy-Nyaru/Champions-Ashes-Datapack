tp @s ^-0.375 ^0.90625 ^2.125 ~-180 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:giant_hunt/on_summon/as_locator_entities