tp @s ^0.20132 ^2.27339 ^1.42492 ~-15 ~-22.5
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:bullet_generator/on_summon/as_locator_entities