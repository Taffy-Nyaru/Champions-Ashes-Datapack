tp @s ^0 ^2.5625 ^0 ~0 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:space_based_missle/on_summon/as_locator_entities