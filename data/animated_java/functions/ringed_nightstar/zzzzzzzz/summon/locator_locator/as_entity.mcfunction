tp @s ^-0.25 ^0.87912 ^0.72038 ~-180 ~-90
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:ringed_nightstar/on_summon/as_locator_entities