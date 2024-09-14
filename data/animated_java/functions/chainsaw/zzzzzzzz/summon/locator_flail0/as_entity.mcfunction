tp @s ^-0.35 ^0.125 ^0.625 ~-180 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:chainsaw/on_summon/as_locator_entities