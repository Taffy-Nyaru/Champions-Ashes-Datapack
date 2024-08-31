tp @s ^-0.4375 ^1.21039 ^1.11174 ~-180 ~2.5
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:blade_of_peril/on_summon/as_locator_entities