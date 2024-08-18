tp @s ^-0.8125 ^-0.24816 ^0.77589 ~-180 ~45
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:starscaller/on_summon/as_locator_entities