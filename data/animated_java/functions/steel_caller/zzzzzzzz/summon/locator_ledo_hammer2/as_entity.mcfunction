tp @s ^-0.37657 ^0.83782 ^-0.02375 ~90 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:steel_caller/on_summon/as_locator_entities