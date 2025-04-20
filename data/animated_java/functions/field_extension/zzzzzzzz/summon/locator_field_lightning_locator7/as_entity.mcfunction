tp @s ^0 ^0 ^2 ~-180 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:field_extension/on_summon/as_locator_entities