tp @s ^0.125 ^-0.0625 ^0.5 ~-180 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:ringed_nightstar/on_summon/as_locator_entities