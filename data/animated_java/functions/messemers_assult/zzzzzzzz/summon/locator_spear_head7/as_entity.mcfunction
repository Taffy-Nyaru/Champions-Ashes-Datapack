tp @s ^0.8125 ^-0.375 ^-2.375 ~0 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:messemers_assult/on_summon/as_locator_entities