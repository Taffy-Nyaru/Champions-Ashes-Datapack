tp @s ^-0.875 ^2.21875 ^0.5625 ~0 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:favor_incantations/on_summon/as_locator_entities