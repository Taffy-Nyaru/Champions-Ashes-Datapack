tp @s ^1.625 ^0.78263 ^-4.40292 ~0 ~90
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:wave_of_destruction/on_summon/as_locator_entities