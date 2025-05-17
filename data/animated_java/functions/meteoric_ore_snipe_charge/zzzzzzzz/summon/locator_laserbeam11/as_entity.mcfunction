tp @s ^-0.33594 ^0.86719 ^15.46875 ~-180 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:meteoric_ore_snipe_charge/on_summon/as_locator_entities