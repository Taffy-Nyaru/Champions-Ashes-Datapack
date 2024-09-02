tp @s ^-0.4375 ^1.3125 ^0.4375 ~0 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:death_blighted/on_summon/as_locator_entities