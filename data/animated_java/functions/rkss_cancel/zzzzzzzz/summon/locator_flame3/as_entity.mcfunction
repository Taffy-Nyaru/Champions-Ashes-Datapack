tp @s ^0.9375 ^0 ^0.1875 ~0 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:rkss_cancel/on_summon/as_locator_entities