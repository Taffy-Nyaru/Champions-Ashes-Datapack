tp @s ^0.34095 ^2.76745 ^1.94604 ~-15 ~-22.5
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:bullet_generator/on_summon/as_locator_entities