tp @s ^-0.28125 ^0.84375 ^6.71875 ~0 ~90
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:kamui/on_summon/as_locator_entities