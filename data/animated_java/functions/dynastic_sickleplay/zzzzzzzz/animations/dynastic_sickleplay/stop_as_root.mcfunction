scoreboard players set @s aj.dynastic_sickleplay.animation.dynastic_sickleplay.local_anim_time 0
tag @s remove aj.dynastic_sickleplay.animation.dynastic_sickleplay
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.dynastic_sickleplay.disable_command_keyframes
function animated_java:dynastic_sickleplay/zzzzzzzz/animations/dynastic_sickleplay/tree/leaf_0
tag @s remove aj.dynastic_sickleplay.disable_command_keyframes