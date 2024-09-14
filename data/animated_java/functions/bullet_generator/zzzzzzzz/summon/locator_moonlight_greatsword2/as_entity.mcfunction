tp @s ^0.84538 ^1.6664 ^0.41634 ~15.60943 ~13.25775
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:bullet_generator/on_summon/as_locator_entities