tp @s ^0.375 ^3.5625 ^-0.0625 ~45 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:gravity_blackhole/on_summon/as_locator_entities