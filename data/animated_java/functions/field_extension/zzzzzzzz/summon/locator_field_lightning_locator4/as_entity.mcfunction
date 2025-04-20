tp @s ^1 ^0 ^-1 ~-180 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:field_extension/on_summon/as_locator_entities