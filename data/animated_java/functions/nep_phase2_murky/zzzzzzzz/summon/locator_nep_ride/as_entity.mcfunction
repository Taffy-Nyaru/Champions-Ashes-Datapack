tp @s ^0.01562 ^1.22461 ^0.0332 ~-180 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:nep_phase2_murky/on_summon/as_locator_entities