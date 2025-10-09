tp @s ^-0.34961 ^0.94861 ^0.73962 ~-180 ~90
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:nep_moonlight_slash/on_summon/as_locator_entities