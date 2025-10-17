tp @s ^0 ^2.79297 ^-3.06445 ~-180 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:nep_phase3_transition/on_summon/as_locator_entities