tp @s ^0.0625 ^0 ^2.3125 ~0 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:rkss_cancel/on_summon/as_locator_entities