tp @s ^0 ^0 ^0.73828 ~-180 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:electric_beacon/on_summon/as_locator_entities