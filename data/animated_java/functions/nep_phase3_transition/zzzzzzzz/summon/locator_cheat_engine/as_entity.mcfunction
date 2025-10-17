tp @s ^-0.42578 ^0.83887 ^0.28613 ~-180 ~-90
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:nep_phase3_transition/on_summon/as_locator_entities