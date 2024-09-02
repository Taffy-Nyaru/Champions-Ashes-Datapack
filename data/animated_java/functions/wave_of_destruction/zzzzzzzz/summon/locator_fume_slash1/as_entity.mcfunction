tp @s ^0.1875 ^2.1875 ^-0.625 ~-180 ~90
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:wave_of_destruction/on_summon/as_locator_entities