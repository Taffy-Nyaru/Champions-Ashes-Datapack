tp @s ^-0.38819 ^3.32368 ^-1.11382 ~0 ~-90
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:dimension_slash/on_summon/as_locator_entities