scoreboard players set @s aj.nep_moonlight_slash.animation.nep_moonlight_slash.local_anim_time 0
tag @s remove aj.nep_moonlight_slash.animation.nep_moonlight_slash
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.nep_moonlight_slash.disable_command_keyframes
function animated_java:nep_moonlight_slash/zzzzzzzz/animations/nep_moonlight_slash/tree/leaf_0
tag @s remove aj.nep_moonlight_slash.disable_command_keyframes