scoreboard players set @s aj.anchor_vfx.animation.anchor_slash.local_anim_time 0
tag @s remove aj.anchor_vfx.animation.anchor_slash
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.anchor_vfx.disable_command_keyframes
function animated_java:anchor_vfx/zzzzzzzz/animations/anchor_slash/tree/leaf_0
tag @s remove aj.anchor_vfx.disable_command_keyframes