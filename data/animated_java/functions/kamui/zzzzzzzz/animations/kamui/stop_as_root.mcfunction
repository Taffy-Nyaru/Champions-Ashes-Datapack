scoreboard players set @s aj.kamui.animation.kamui.local_anim_time 0
tag @s remove aj.kamui.animation.kamui
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.kamui.disable_command_keyframes
function animated_java:kamui/zzzzzzzz/animations/kamui/tree/leaf_0
tag @s remove aj.kamui.disable_command_keyframes