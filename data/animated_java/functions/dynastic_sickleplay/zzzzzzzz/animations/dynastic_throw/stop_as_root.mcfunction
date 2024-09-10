scoreboard players set @s aj.dynastic_sickleplay.animation.dynastic_throw.local_anim_time 0
tag @s remove aj.dynastic_sickleplay.animation.dynastic_throw
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.dynastic_sickleplay.disable_command_keyframes
function animated_java:dynastic_sickleplay/zzzzzzzz/animations/dynastic_throw/tree/leaf_0
tag @s remove aj.dynastic_sickleplay.disable_command_keyframes