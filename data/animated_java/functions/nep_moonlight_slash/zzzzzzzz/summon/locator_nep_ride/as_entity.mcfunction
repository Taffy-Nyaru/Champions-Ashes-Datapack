tp @s ^0.07422 ^0.95117 ^-3.29687 ~-180 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:nep_moonlight_slash/on_summon/as_locator_entities