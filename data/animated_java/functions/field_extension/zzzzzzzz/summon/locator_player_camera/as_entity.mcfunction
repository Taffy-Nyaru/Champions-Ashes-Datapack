tp @s ^-0.01172 ^0.14453 ^-1.09375 ~-180 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:field_extension/on_summon/as_locator_entities