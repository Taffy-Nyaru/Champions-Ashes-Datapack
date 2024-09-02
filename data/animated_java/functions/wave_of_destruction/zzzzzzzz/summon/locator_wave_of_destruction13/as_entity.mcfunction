tp @s ^-0.9375 ^2.1875 ^-2.6875 ~0 ~90
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:wave_of_destruction/on_summon/as_locator_entities