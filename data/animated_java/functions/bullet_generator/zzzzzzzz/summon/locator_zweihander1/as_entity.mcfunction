tp @s ^-1.83473 ^2.24022 ^0.42111 ~70 ~-17.5
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:bullet_generator/on_summon/as_locator_entities