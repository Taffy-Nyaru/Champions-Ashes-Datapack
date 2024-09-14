tp @s ^-0.79322 ^2.20569 ^1.43298 ~27.5 ~-7.5
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:bullet_generator/on_summon/as_locator_entities