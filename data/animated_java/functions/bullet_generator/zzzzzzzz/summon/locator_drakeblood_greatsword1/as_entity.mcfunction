tp @s ^-0.125 ^1.9375 ^-2.3125 ~0 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:bullet_generator/on_summon/as_locator_entities