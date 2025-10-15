tp @s ^-0.0625 ^1 ^-1.125 ~0 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:nep_fume_ugs_skills/on_summon/as_locator_entities