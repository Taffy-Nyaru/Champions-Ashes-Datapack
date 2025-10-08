tp @s ^-0.01302 ^-0.02539 ^10.35742 ~-180 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:nep_void_missle/on_summon/as_locator_entities