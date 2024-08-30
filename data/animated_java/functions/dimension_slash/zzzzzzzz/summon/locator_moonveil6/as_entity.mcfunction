tp @s ^-0.38819 ^2.63618 ^-2.67632 ~0 ~-90
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:dimension_slash/on_summon/as_locator_entities