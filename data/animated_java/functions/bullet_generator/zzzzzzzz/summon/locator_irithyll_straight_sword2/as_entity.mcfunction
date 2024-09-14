tp @s ^0.05294 ^1.69766 ^0.87114 ~-15 ~-22.5
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:bullet_generator/on_summon/as_locator_entities