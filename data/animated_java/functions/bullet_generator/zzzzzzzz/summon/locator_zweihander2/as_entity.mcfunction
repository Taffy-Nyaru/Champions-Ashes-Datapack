tp @s ^-2.45693 ^2.84218 ^0.64757 ~70 ~-17.5
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:bullet_generator/on_summon/as_locator_entities