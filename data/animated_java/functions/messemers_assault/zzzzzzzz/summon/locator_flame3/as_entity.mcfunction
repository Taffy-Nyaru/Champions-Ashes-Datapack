tp @s ^-0.75 ^0.01925 ^1.04206 ~-180 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:messemers_assault/on_summon/as_locator_entities