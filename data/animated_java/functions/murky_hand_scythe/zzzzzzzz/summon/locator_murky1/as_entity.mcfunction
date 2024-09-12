tp @s ^-0.375 ^0.9375 ^-0.0625 ~-180 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:murky_hand_scythe/on_summon/as_locator_entities