tp @s ^-0.375 ^0.625 ^1.34375 ~-180 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:dynastic_sickleplay/on_summon/as_locator_entities