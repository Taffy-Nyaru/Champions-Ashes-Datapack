scoreboard players set @s aj.space_based_missle.animation.lockon_target.local_anim_time 0
tag @s remove aj.space_based_missle.animation.lockon_target
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.space_based_missle.disable_command_keyframes
function animated_java:space_based_missle/zzzzzzzz/animations/lockon_target/tree/leaf_0
tag @s remove aj.space_based_missle.disable_command_keyframes