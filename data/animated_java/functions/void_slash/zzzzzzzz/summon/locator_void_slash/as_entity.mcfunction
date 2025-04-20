tp @s ^0 ^1.4375 ^0 ~0 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:void_slash/on_summon/as_locator_entities