scoreboard players set @s aj.thunder_bullet.animation.animation.thunder_bullet.rotation.local_anim_time 0
tag @s remove aj.thunder_bullet.animation.animation.thunder_bullet.rotation
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.thunder_bullet.disable_command_keyframes
function animated_java:thunder_bullet/zzzzzzzz/animations/animation.thunder_bullet.rotation/tree/leaf_0
tag @s remove aj.thunder_bullet.disable_command_keyframes