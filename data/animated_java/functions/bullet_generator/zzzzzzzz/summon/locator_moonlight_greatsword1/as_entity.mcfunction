tp @s ^1.34088 ^1.83473 ^0.79597 ~15.60943 ~13.25775
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:bullet_generator/on_summon/as_locator_entities