tp @s ^-0.33165 ^0.9513 ^1.11964 ~-90 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:steel_anchor/on_summon/as_locator_entities