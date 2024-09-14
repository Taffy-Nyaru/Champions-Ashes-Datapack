tp @s ^-0.52405 ^1.84527 ^0.9159 ~27.5 ~-7.5
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:bullet_generator/on_summon/as_locator_entities