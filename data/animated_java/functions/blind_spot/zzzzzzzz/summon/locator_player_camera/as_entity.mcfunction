tp @s ^0 ^0.0625 ^0.3125 ~-180 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:blind_spot/on_summon/as_locator_entities