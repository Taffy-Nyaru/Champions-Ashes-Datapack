tp @s ^-0.38819 ^1.32368 ^-2.30132 ~0 ~-90
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:dimension_slash/on_summon/as_locator_entities