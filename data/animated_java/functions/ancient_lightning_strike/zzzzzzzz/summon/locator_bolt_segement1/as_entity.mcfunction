tp @s ^0 ^7.9375 ^-0.0625 ~0 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:ancient_lightning_strike/on_summon/as_locator_entities