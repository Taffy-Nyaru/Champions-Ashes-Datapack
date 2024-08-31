tp @s ^-0.4375 ^0.9375 ^0.79918 ~-180 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:blade_of_peril/on_summon/as_locator_entities