tp @s ^-0.125 ^0.0625 ^0.09375 ~0 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:death_blighted/on_summon/as_locator_entities