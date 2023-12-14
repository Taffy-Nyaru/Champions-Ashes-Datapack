tp @s ^-0.375 ^0.875 ^-1.375 ~0 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:rkgugs_skill/on_summon/as_locator_entities