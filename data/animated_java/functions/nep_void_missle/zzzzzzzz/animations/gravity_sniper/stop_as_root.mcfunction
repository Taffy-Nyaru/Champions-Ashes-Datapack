scoreboard players set @s aj.nep_void_missle.animation.gravity_sniper.local_anim_time 0
tag @s remove aj.nep_void_missle.animation.gravity_sniper
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.nep_void_missle.disable_command_keyframes
function animated_java:nep_void_missle/zzzzzzzz/animations/gravity_sniper/tree/leaf_0
tag @s remove aj.nep_void_missle.disable_command_keyframes