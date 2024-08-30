tp @s ^-0.375 ^0.875 ^0.3125 ~-180 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:crystal_blade/on_summon/as_locator_entities