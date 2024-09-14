tp @s ^-1.34525 ^1.81385 ^0.24295 ~70 ~-17.5
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:bullet_generator/on_summon/as_locator_entities