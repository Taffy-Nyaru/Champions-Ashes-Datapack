tp @s ^0 ^0.0625 ^0.0625 ~-180 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:steel_caller/on_summon/as_locator_entities