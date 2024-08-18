tp @s ^0.375 ^1.25 ^-3.25 ~-90 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:gravity_thrust/on_summon/as_locator_entities