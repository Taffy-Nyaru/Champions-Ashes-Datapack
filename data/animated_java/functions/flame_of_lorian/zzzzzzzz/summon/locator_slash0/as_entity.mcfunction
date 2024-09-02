tp @s ^-0.125 ^1.1875 ^2.5625 ~-180 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:flame_of_lorian/on_summon/as_locator_entities